<script lang="ts">
    import { fade } from 'svelte/transition';
    let dropdownOpen = false;
    let selectedOption = 'Selecciona una opción';
  
    function toggleDropdown() {
      dropdownOpen = !dropdownOpen;
    }
  
    function selectOption(option: string) {
      selectedOption = option;
      dropdownOpen = false;
      console.log('Opción seleccionada:', option);
      // Lógica adicional aquí
    }
  </script>
  
  <div class="relative inline-block text-left">
    <!-- Botón principal con ancho fijo -->
    <button
      on:click={toggleDropdown}
      type="button"
      class="w-56 flex items-center justify-between px-4 py-2 bg-gray-800 text-gray-100 rounded-md shadow hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-gray-600"
    >
      <span>{selectedOption}</span>
      <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
      </svg>
    </button>
  
    {#if dropdownOpen}
      <!-- Menú desplegable con ancho fijo -->
      <ul class="absolute mt-2 w-56 bg-gray-900 border border-gray-700 rounded-md shadow-lg z-10" transition:fade>
        <li>
          <button
            type="button"
            class="w-full text-left px-4 py-2 text-gray-100 hover:bg-gray-800 focus:outline-none"
            on:click={() => selectOption('Python')}
          >
            Python
          </button>
        </li>
        <li>
          <button
            type="button"
            class="w-full text-left px-4 py-2 text-gray-100 hover:bg-gray-800 focus:outline-none"
            on:click={() => selectOption('Redes')}
          >
            Redes
          </button>
        </li>
        <li>
          <button
            type="button"
            class="w-full text-left px-4 py-2 text-gray-100 hover:bg-gray-800 focus:outline-none"
            on:click={() => selectOption('CyberSeguridad')}
          >
            CyberSeguridad
          </button>
        </li>
      </ul>
    {/if}
  </div>
  