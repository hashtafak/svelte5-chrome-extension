# UI Components Library

Foundational DaisyUI components built for Svelte 5 with full TypeScript support.

## Components

### Button
Flexible button component with multiple variants and sizes.

```svelte
<script>
  import { Button } from '$lib/components/ui';
</script>

<Button variant="primary" size="lg" onclick={() => console.log('clicked')}>
  Click Me
</Button>

<!-- Available variants -->
<Button variant="primary">Primary</Button>
<Button variant="secondary">Secondary</Button>
<Button variant="accent">Accent</Button>
<Button variant="ghost">Ghost</Button>
<Button variant="error">Error</Button>

<!-- Modifiers -->
<Button outline>Outline</Button>
<Button loading>Loading</Button>
<Button disabled>Disabled</Button>
<Button circle>+</Button>
<Button square>□</Button>
<Button wide>Wide Button</Button>
<Button block>Block Button</Button>
```

### Card
Container component for content sections.

```svelte
<script>
  import { Card, Button } from '$lib/components/ui';
</script>

<Card title="My Card">
  {#snippet children()}
    <p>Card content goes here</p>
  {/snippet}
  
  {#snippet actions()}
    <Button variant="primary">Action</Button>
  {/snippet}
</Card>

<!-- Variants -->
<Card bordered>Bordered card</Card>
<Card compact>Compact card</Card>
```

### Input
Form input component with validation states.

```svelte
<script>
  import { Input } from '$lib/components/ui';
  
  let email = $state('');
</script>

<Input 
  type="email" 
  bind:value={email}
  placeholder="Enter email"
  primary
/>

<!-- States -->
<Input success placeholder="Valid input" />
<Input error placeholder="Invalid input" />
<Input warning placeholder="Warning input" />
<Input info placeholder="Info input" />

<!-- Sizes -->
<Input size="xs" placeholder="Extra small" />
<Input size="sm" placeholder="Small" />
<Input size="md" placeholder="Medium" />
<Input size="lg" placeholder="Large" />
```

### Modal
Dialog component for overlays.

```svelte
<script>
  import { Modal, Button } from '$lib/components/ui';
  
  let showModal = $state(false);
</script>

<Button onclick={() => showModal = true}>Open Modal</Button>

<Modal bind:open={showModal} title="My Modal">
  {#snippet children()}
    <p>Modal content here</p>
  {/snippet}
  
  {#snippet actions()}
    <Button onclick={() => showModal = false}>Close</Button>
  {/snippet}
</Modal>
```

### Badge
Small status indicator component.

```svelte
<script>
  import { Badge } from '$lib/components/ui';
</script>

<Badge variant="primary">New</Badge>
<Badge variant="secondary">Beta</Badge>
<Badge variant="success">Active</Badge>
<Badge variant="error">Error</Badge>

<!-- Sizes -->
<Badge size="xs">XS</Badge>
<Badge size="sm">Small</Badge>
<Badge size="md">Medium</Badge>
<Badge size="lg">Large</Badge>

<!-- Outline -->
<Badge outline variant="primary">Outline</Badge>
```

### Alert
Status message component with automatic icons.

```svelte
<script>
  import { Alert } from '$lib/components/ui';
</script>

<Alert variant="info">
  {#snippet children()}
    This is an informational message
  {/snippet}
</Alert>

<Alert variant="success">Success message</Alert>
<Alert variant="warning">Warning message</Alert>
<Alert variant="error">Error message</Alert>

<!-- Without icon -->
<Alert variant="info" showIcon={false}>
  Custom message without icon
</Alert>
```

## Design Philosophy

1. **Type-Safe**: Full TypeScript support with proper prop types
2. **Flexible**: Accepts all standard HTML attributes via `...rest`
3. **Consistent**: Follows DaisyUI naming conventions
4. **Accessible**: Proper ARIA attributes and semantic HTML
5. **Modern**: Built for Svelte 5 with `$props()` and `$bindable()`

## Adding New Components

1. Create component in `/src/lib/components/ui/`
2. Export from `index.ts`
3. Document usage in this README
4. Follow the existing patterns for consistency

## Resources

- [DaisyUI Documentation](https://daisyui.com/components/)
- [Svelte 5 Documentation](https://svelte.dev/docs/svelte/overview)
