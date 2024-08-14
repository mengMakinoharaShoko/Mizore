<template>
  <div class="play-list-container">
    <yin-nav :styleList="songStyle" :activeName="activeName" @click="handleChangeView"></yin-nav>
    <play-list :playList="data" path="song-sheet-detail"></play-list>
    <el-pagination
      class="pagination"
      background
      layout="total, prev, pager, next"
      :current-page="currentPage"
      :page-size="pageSize"
      :total="allPlayList.length"
      @current-change="handleCurrentChange"
    >
    </el-pagination>
  </div>
</template>

<script lang="ts">
import { defineComponent, ref, computed } from "vue";
import YinNav from "@/components/layouts/YinNav.vue";
import PlayList from "@/components/PlayList.vue";
import { SONGSTYLE } from "@/enums";
import { HttpManager } from "@/api";
// export default defineComponent({
//   components: {
//     YinNav,
//     PlayList,
//   },
//   setup() {
//     const activeName = ref("全部歌单");
//     const pageSize = ref(15); // 页数
//     const currentPage = ref(1); // 当前页
//     const songStyle = ref(SONGSTYLE); // 歌单导航栏类别
//     const allPlayList = ref([
//       { id: 1, name: 'Song 1', artist: 'Artist 1' },
//       { id: 2, name: 'Song 2', artist: 'Artist 2' },
//       { id: 3, name: 'Song 3', artist: 'Artist 3' },
//       // 更多默认数据...
//     ]); // 默认歌单数据
//     const data = computed(() => allPlayList.value.slice((currentPage.value - 1) * pageSize.value, currentPage.value * pageSize.value));
//
//     // 模拟获取全部歌单
//     async function getSongList() {
//       // 模拟延迟
//       await new Promise(resolve => setTimeout(resolve, 1000));
//       // 使用默认数据
//       allPlayList.value = [
//         { id: 1, name: 'Leeds and Bluebird', artist: 'Kitauji' }
//
//       ];
//       currentPage.value = 1;
//     }
//
//     // 模拟通过类别获取歌单
//     async function getSongListOfStyle(style) {
//       // 模拟延迟
//       await new Promise(resolve => setTimeout(resolve, 100));
//       // 使用默认数据
//       allPlayList.value = [
//         { id: 1, name: 'Leeds and Bluebird', artist: 'Kitauji' },
//
//       ];
//       currentPage.value = 1;
//     }
//
//     try {
//       getSongList();
//     } catch (error) {
//       console.error(error);
//     }
//
//     // 获取歌单
//     async function handleChangeView(item) {
//       activeName.value = item.name;
//       allPlayList.value = [];
//       try {
//         if (item.name === "全部歌单") {
//           await getSongList();
//         } else {
//           await getSongListOfStyle(item.name);
//         }
//       } catch (error) {
//         console.error(error);
//       }
//     }
//
//     // 获取当前页
//     function handleCurrentChange(val) {
//       currentPage.value = val;
//     }
//
//     return {
//       activeName,
//       songStyle,
//       pageSize,
//       currentPage,
//       allPlayList,
//       data,
//       handleChangeView,
//       handleCurrentChange,
//     };
//   },
// });
export default defineComponent({
  components: {
    YinNav,
    PlayList,
  },
  setup() {
    const activeName = ref("全部歌单");
    const pageSize = ref(1); // 页数
    const currentPage = ref(1); // 当前页
    const songStyle = ref(SONGSTYLE); // 歌单导航栏类别
    const allPlayList = ref([]); // 歌单
    const data = computed(() => allPlayList.value.slice((currentPage.value - 1) * pageSize.value, currentPage.value * pageSize.value));

    // 获取全部歌单
    async function getSongList() {
      allPlayList.value = ((await HttpManager.getSongList()) as ResponseBody).data;
      currentPage.value = 1;
    }
    // 通过类别获取歌单
    async function getSongListOfStyle(style) {
      allPlayList.value = ((await HttpManager.getSongListOfStyle(style)) as ResponseBody).data;
      currentPage.value = 1;
    }

    try {
      getSongList();
    } catch (error) {
      console.error(error);
    }

    // 获取歌单
    async function handleChangeView(item) {
      activeName.value = item.name;
      allPlayList.value = [];
      try {
        if (item.name === "全部歌单") {
          await getSongList();
        } else {
          await getSongListOfStyle(item.name);
        }
      } catch (error) {
        console.error(error);
      }
    }
    // 获取当前页
    function handleCurrentChange(val) {
      currentPage.value = val;
    }
    return {
      activeName,
      songStyle,
      pageSize,
      currentPage,
      allPlayList,
      data,
      handleChangeView,
      handleCurrentChange,
    };
  },
});
</script>
