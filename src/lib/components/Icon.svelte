<script lang="ts">
  interface Props {
icon: any;
  size?: number | string;
    strokeWidth?: number;
    class?: string;
  }

  let {
icon,
  size = 24,
    strokeWidth = 2,
    class: className = "",
    ...rest
  }: Props = $props();
</script>

{@render icon({ size, strokeWidth, class: className, ...rest })}
