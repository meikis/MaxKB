<template>
  <svg
    v-if="!isDefaultTheme"
    :class="!isDefaultTheme ? 'custom-logo-color' : ''"
    width="24"
    height="24"
    fill="none"
    xmlns="http://www.w3.org/2000/svg"
  >
    <path
      d="M20.1716 1.68834C20.6753 1.53273 21.0458 2.16193 20.6652 2.52691L12.2658 10.5836C11.0058 11.7921 9.32754 12.4668 7.5817 12.4668C5.68044 12.4668 3.8669 11.667 2.58487 10.263L1.45879 9.02985C1.33225 8.90313 1.24137 8.74527 1.19534 8.5722C1.14931 8.39913 1.14974 8.21698 1.19661 8.04413C1.24347 7.87129 1.3351 7.71386 1.46225 7.58775C1.5894 7.46164 1.74757 7.3713 1.92079 7.32585L20.1716 1.68834Z"
      fill="currentColor"
    />
    <path
      d="M12 16.1851C12 14.2766 12.7377 12.4419 14.0588 11.0646L21.4664 3.34177C21.8268 2.96601 22.4499 3.32266 22.3084 3.82374L17.143 22.1182C17.0971 22.291 17.0064 22.4487 16.8801 22.5754C16.7538 22.7021 16.5964 22.7932 16.4237 22.8397C16.251 22.8862 16.0691 22.8864 15.8964 22.8402C15.7236 22.794 15.566 22.7031 15.4395 22.5767L14.4439 21.6791C12.8881 20.2764 12 18.2799 12 16.1851Z"
      fill="currentColor"
    />
  </svg>

  <img v-else src="@/assets/icon_send_colorful.svg" />
</template>
<script setup lang="ts">
import { ref, computed, onMounted } from 'vue'
import useStore from '@/stores'
defineOptions({ name: 'SendIcon' })

defineProps({
  height: {
    type: String,
    default: '36px'
  }
})
const { theme } = useStore()
const isDefaultTheme = computed(() => {
  return theme.isDefaultTheme()
})
</script>
<style lang="scss" scoped>
.custom-logo-color {
  path {
    fill: var(--el-color-primary);
  }
}
</style>
