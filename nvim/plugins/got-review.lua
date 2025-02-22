return {
  {
    -- Plugin: goto-preview
    -- URL: https://github.com/rmagatti/goto-preview
    -- Descripción: Proporciona funcionalidad de vista previa para definiciones, declaraciones, implementaciones, definiciones de tipos y referencias.
    "rmagatti/goto-preview",
    event = "BufEnter", -- Cargar el plugin cuando se ingrese a un buffer
    config = true, -- Habilitar la configuración predeterminada
    keys = {
      {
        "gpd",
        "<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
        noremap = true, -- No permitir el remapeo
        desc = "ir a la vista previa de la definición", -- Descripción del atajo de teclado
      },
      {
        "gpD",
        "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>",
        noremap = true,
        desc = "ir a la vista previa de la declaración",
      },
      {
        "gpi",
        "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
        noremap = true,
        desc = "ir a la vista previa de la implementación",
      },
      {
        "gpy",
        "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
        noremap = true,
        desc = "ir a la vista previa de la definición de tipo",
      },
      {
        "gpr",
        "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
        noremap = true,
        desc = "ir a la vista previa de las referencias",
      },
      {
        "gP",
        "<cmd>lua require('goto-preview').close_all_win()<CR>",
        noremap = true,
        desc = "cerrar todas las ventanas de vista previa",
      },
    },
  },
}
