<script lang="ts">
  import { MENU_ITEMS } from '../constants/menu';
</script>

<aside class="h-16 bg-base-200 p-2 w-full bottom-0 fixed">
  <nav class="flex flex-row gap-4 justify-center">
    {#each MENU_ITEMS as item}
      <button class="btn btn-ghost btn-square" onclick={item.action}>
        <span class="text-xl" title={item.label}>{item.icon}</span>
      </button>
    {/each}
  </nav>
</aside>
