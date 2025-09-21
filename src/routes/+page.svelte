<script lang="ts">
	import Card from '$lib/components/shad/ui/card/card.svelte';
	import { Beer } from '@lucide/svelte';
	import { Button } from '$lib/components/shad/ui/button';
</script>

<svelte:head>
	<title>Pints</title>
</svelte:head>

<div class="w-full p-2 md:w-1/2 md:p-0">
	<Card class="m-4 flex flex-col items-center justify-center text-center">
		<h1 class="text-4xl font-black md:text-8xl">Pints</h1>

		<h2 class="-mt-4 text-neutral-500 italic">How many pints do I owe you?</h2>

		<div class="flex flex-row flex-wrap items-center justify-center gap-2">
			<Button onclick={() => (window.location.href = '/search')} variant="default">
				<Beer class="mr-2" />
				Search
			</Button>
		</div>
	</Card>
</div>
