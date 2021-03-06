return {
  version = "1.1",
  luaversion = "5.1",
  orientation = "orthogonal",
  width = 12,
  height = 12,
  tilewidth = 64,
  tileheight = 64,
  properties = {},
  tilesets = {
    {
      name = "ground",
      firstgid = 1,
      filename = "../../../../tools/tiled/dont_starve/ground.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "../../../../tools/tiled/dont_starve/tiles.png",
      imagewidth = 512,
      imageheight = 384,
      properties = {},
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "BG_TILES",
      x = 0,
      y = 0,
      width = 12,
      height = 12,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 17, 17, 17, 17, 17, 17, 17, 17, 17, 0, 0,
        17, 17, 9, 9, 17, 17, 17, 9, 9, 17, 17, 17,
        17, 9, 9, 9, 17, 17, 17, 9, 9, 9, 17, 17,
        17, 9, 9, 17, 17, 17, 17, 17, 17, 9, 9, 17,
        17, 9, 9, 17, 17, 17, 17, 17, 17, 9, 9, 17,
        17, 9, 9, 17, 17, 17, 17, 17, 17, 9, 17, 17,
        17, 9, 9, 17, 17, 17, 17, 17, 17, 9, 17, 17,
        17, 17, 9, 9, 17, 17, 17, 17, 9, 9, 17, 0,
        0, 17, 17, 9, 9, 9, 9, 9, 9, 9, 17, 17,
        0, 17, 17, 17, 9, 9, 9, 9, 17, 17, 17, 0,
        0, 0, 17, 17, 17, 17, 17, 17, 17, 17, 17, 0,
        0, 0, 0, 17, 17, 17, 17, 17, 17, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      name = "FG_OBJECTS",
      visible = true,
      opacity = 1,
      properties = {},
      objects = {
        {
          name = "",
          type = "miniflare",
          shape = "rectangle",
          x = 415,
          y = 600,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "bullkelp_plant",
          shape = "rectangle",
          x = 427,
          y = 398,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "bullkelp_plant",
          shape = "rectangle",
          x = 465,
          y = 323,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "bullkelp_plant",
          shape = "rectangle",
          x = 452,
          y = 249,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "bullkelp_plant",
          shape = "rectangle",
          x = 408,
          y = 340,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "bullkelp_plant",
          shape = "rectangle",
          x = 349,
          y = 396,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "bullkelp_plant",
          shape = "rectangle",
          x = 311,
          y = 341,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "bullkelp_plant",
          shape = "rectangle",
          x = 315,
          y = 252,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "bullkelp_plant",
          shape = "rectangle",
          x = 352,
          y = 314,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "miniflare",
          shape = "rectangle",
          x = 521,
          y = 130,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "miniflare",
          shape = "rectangle",
          x = 137,
          y = 341,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
