{ 
    "Source" : "CopyPasteAlphaBlend.azsl",

    "DepthStencilState" : {
        "Depth" : { "Enable" : false }
    },

    "GlobalTargetBlendState": {
        "Enable": true,
        "BlendSource": "AlphaSource",
        "BlendDest": "AlphaSourceInverse",
        "BlendOp": "Add"
    },

    "ProgramSettings":
    {
      "EntryPoints":
      [
        {
          "name": "MainVS",
          "type": "Vertex"
        },
        {
          "name": "MainPS",
          "type": "Fragment"
        }
      ]
    },
    "Supervariants":
    [
        {
            "Name": "",
            "AddBuildArguments": {
                "azslc": ["--no-subpass-input"]
            }
        },
        {
            "Name": "SubpassInput",
            "RemoveBuildArguments": {
                "azslc": ["--no-subpass-input"]
            }
        }
    ]
}
