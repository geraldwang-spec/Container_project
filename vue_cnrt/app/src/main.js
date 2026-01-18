import { createApp, h } from 'vue'

console.log("Vue is starting...");

const app = createApp({
  render() {
    // 這裡的 h 函數負責產生 HTML 節點
    return h('h2', 'Vue 已經成功掛載！(這次真的動了)')
  }
})

app.mount('#app')
