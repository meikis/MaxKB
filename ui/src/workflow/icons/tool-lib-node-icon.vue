<template>
  <el-avatar
    v-if="isAppIcon(item?.icon)"
    shape="square"
    :size="32"
    style="background: none"
    class="mr-8"
  >
    <img :src="item?.icon" alt="" />
  </el-avatar>
  <el-avatar v-else shape="square" style="background: #34c724">
    <img src="@/assets/workflow/icon_tool.svg" style="width: 75%" alt="" />
  </el-avatar>
</template>
<script setup lang="ts">
import { isAppIcon } from '@/utils/common'
const props = defineProps<{
  item?: {
    name: string
    icon: string
  }
}>()
</script>

<script setup lang="ts"></script>
