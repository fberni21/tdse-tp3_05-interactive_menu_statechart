{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "interactive_menu_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    in event EV_ENTER\n    in event EV_NEXT\n    in event EV_ESCAPE\n    \n    var motor : integer = 1\n    var speed : integer = 0"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -1247,
          "y": -447
        },
        "size": {
          "width": 1434,
          "height": 855
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "db92ac68-1fae-4aeb-aee7-8b395ac59e28",
        "z": 20,
        "embeds": [
          "1604a4d5-c450-4347-ad8c-336ef86d3c42",
          "70c8bb99-398a-42ee-8ef3-f325e8940a7e",
          "18b4b854-5f47-4853-98b0-68622012a108",
          "f257c2ab-00f7-404c-acee-d409f226c189",
          "87da346a-d91e-4a3d-8fc8-400079e31069",
          "0567b3df-de22-47a5-a9ef-86b59f3d4262",
          "eb46a2ed-fc89-4d65-890e-89a9c36a3897",
          "959cfd5f-fe5a-4b21-b13c-e17f23b3cec3",
          "040e364c-19aa-442b-90d5-f44fa317bf16"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "name": {
            "text": "Interactive Menu"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -1177,
          "y": -320
        },
        "size": {
          "width": 119,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "0567b3df-de22-47a5-a9ef-86b59f3d4262",
        "z": 36,
        "embeds": [],
        "parent": "db92ac68-1fae-4aeb-aee7-8b395ac59e28",
        "attrs": {
          "name": {
            "text": "ST_MENU_MAIN",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -1194.5,
          "y": -220
        },
        "size": {
          "width": 154,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "eb46a2ed-fc89-4d65-890e-89a9c36a3897",
        "z": 38,
        "parent": "db92ac68-1fae-4aeb-aee7-8b395ac59e28",
        "embeds": [
          "be2d81f8-df2a-4ae5-99f9-da65c5ad0d6b"
        ],
        "attrs": {
          "name": {
            "text": "ST_MENU_SELECT_MOTOR",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "0567b3df-de22-47a5-a9ef-86b59f3d4262"
        },
        "target": {
          "id": "eb46a2ed-fc89-4d65-890e-89a9c36a3897",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 76.5,
              "dy": 31,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ENTER / motor = 1"
              }
            },
            "position": {
              "distance": 0.425,
              "offset": -86,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "87da346a-d91e-4a3d-8fc8-400079e31069",
        "z": 39,
        "parent": "db92ac68-1fae-4aeb-aee7-8b395ac59e28",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "eb46a2ed-fc89-4d65-890e-89a9c36a3897",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 71.5,
              "dy": 56,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "eb46a2ed-fc89-4d65-890e-89a9c36a3897",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 113.5,
              "dy": 51,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_NEXT / motor = (motor % 2) +1"
              }
            },
            "position": {
              "distance": 0.5845378018555485,
              "offset": 18,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "be2d81f8-df2a-4ae5-99f9-da65c5ad0d6b",
        "z": 40,
        "parent": "eb46a2ed-fc89-4d65-890e-89a9c36a3897",
        "vertices": [
          {
            "x": -1123,
            "y": -124
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "eb46a2ed-fc89-4d65-890e-89a9c36a3897"
        },
        "target": {
          "id": "0567b3df-de22-47a5-a9ef-86b59f3d4262",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 21,
              "dy": 53,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ESCAPE"
              }
            },
            "position": {
              "distance": 0.55,
              "offset": -45,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f257c2ab-00f7-404c-acee-d409f226c189",
        "z": 41,
        "parent": "db92ac68-1fae-4aeb-aee7-8b395ac59e28",
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -1165,
          "y": -378
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "959cfd5f-fe5a-4b21-b13c-e17f23b3cec3",
        "z": 42,
        "embeds": [
          "2bec1f25-d6d9-4c41-bc8e-4b4ec6572ce2"
        ],
        "parent": "db92ac68-1fae-4aeb-aee7-8b395ac59e28",
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -1165,
          "y": -363
        },
        "id": "2bec1f25-d6d9-4c41-bc8e-4b4ec6572ce2",
        "z": 43,
        "parent": "959cfd5f-fe5a-4b21-b13c-e17f23b3cec3",
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "959cfd5f-fe5a-4b21-b13c-e17f23b3cec3"
        },
        "target": {
          "id": "0567b3df-de22-47a5-a9ef-86b59f3d4262",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 30,
              "dy": 14,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "18b4b854-5f47-4853-98b0-68622012a108",
        "z": 44,
        "parent": "db92ac68-1fae-4aeb-aee7-8b395ac59e28",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -852,
          "y": -261
        },
        "size": {
          "width": 1001,
          "height": 648
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "040e364c-19aa-442b-90d5-f44fa317bf16",
        "z": 465,
        "embeds": [
          "d736ed74-5201-4631-9d02-4a411ad4489c"
        ],
        "parent": "db92ac68-1fae-4aeb-aee7-8b395ac59e28",
        "attrs": {
          "name": {
            "text": "ST_MENU_SELECT_PARAM",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "eb46a2ed-fc89-4d65-890e-89a9c36a3897"
        },
        "target": {
          "id": "040e364c-19aa-442b-90d5-f44fa317bf16",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 22.00006103515625,
              "dy": 45.56353759765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ENTER"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1604a4d5-c450-4347-ad8c-336ef86d3c42",
        "z": 511,
        "parent": "db92ac68-1fae-4aeb-aee7-8b395ac59e28",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "040e364c-19aa-442b-90d5-f44fa317bf16"
        },
        "target": {
          "id": "eb46a2ed-fc89-4d65-890e-89a9c36a3897",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 141.5,
              "dy": 42,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ESCAPE"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "70c8bb99-398a-42ee-8ef3-f325e8940a7e",
        "z": 511,
        "parent": "db92ac68-1fae-4aeb-aee7-8b395ac59e28",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -851,
          "y": -239.1999969482422
        },
        "size": {
          "width": 999,
          "height": 625.1999969482422
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "z": 516,
        "embeds": [
          "b159a340-8f9a-4cfd-bed5-4605173f4d8f",
          "36b608cf-af50-4862-909f-a90be330ed3a",
          "b8c7732a-e267-457a-9881-7dc047eb99b2",
          "ef849f85-3ad2-4e93-a391-93662c00d002",
          "265fadc1-f396-4a7c-bf4f-7350ab2eb1bf",
          "72ec037c-069e-4592-8a81-0a2101d03080",
          "e9919f79-d041-4687-abbc-e41a45fd2170",
          "4b1fa9d7-5c75-4672-a0aa-7aa04d5bd936",
          "c190e5a7-083a-408e-ae3a-e9429ec61701",
          "9eef6c14-c78d-43c6-a383-655a23aef985",
          "44f5cce0-0c17-4ba2-8cbb-c05f2273be8b",
          "61d58629-e2a1-44b1-b4d2-3f0d98400e89",
          "d26aa369-25d1-4eb1-bfeb-fc39cdcca6e0",
          "528a7874-4c45-4d0e-82ad-6069abe1f4f4",
          "bf78f5a7-9f7c-44fe-a2ae-4dc4ec3beb78",
          "6d771e56-69db-4a49-b54c-f8e47c47c569",
          "0340782c-07aa-436c-9519-82c919f9397d"
        ],
        "parent": "040e364c-19aa-442b-90d5-f44fa317bf16",
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -825.0000610351562,
          "y": -217.00003051757812
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "44f5cce0-0c17-4ba2-8cbb-c05f2273be8b",
        "z": 517,
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "embeds": [
          "a4295e81-5e5e-48c7-995e-810e7883d460"
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -825.0000610351562,
          "y": -180.50007152557373
        },
        "size": {
          "width": 110.80000305175781,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "61d58629-e2a1-44b1-b4d2-3f0d98400e89",
        "z": 518,
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "embeds": [],
        "attrs": {
          "name": {
            "text": "ST_PARAM_POWER",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -825.0000610351562,
          "y": 21
        },
        "size": {
          "width": 274.3438262939453,
          "height": 307
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "d26aa369-25d1-4eb1-bfeb-fc39cdcca6e0",
        "z": 519,
        "embeds": [
          "7dc85e86-bdf8-4b3d-9739-b6dabc9d1125"
        ],
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "attrs": {
          "name": {
            "text": "ST_MODIFY_POWER",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -179,
          "y": -169.5
        },
        "size": {
          "width": 110.80000305175781,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "528a7874-4c45-4d0e-82ad-6069abe1f4f4",
        "z": 520,
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "attrs": {
          "name": {
            "text": "ST_PARAM_SPIN",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -418.4000015258789,
          "y": -169.5
        },
        "size": {
          "width": 110.80000305175781,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "bf78f5a7-9f7c-44fe-a2ae-4dc4ec3beb78",
        "z": 521,
        "embeds": [],
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "attrs": {
          "name": {
            "text": "ST_PARAM_SPEED",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -198,
          "y": 22.800003051757812
        },
        "size": {
          "width": 279.67188262939453,
          "height": 307
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "6d771e56-69db-4a49-b54c-f8e47c47c569",
        "z": 522,
        "embeds": [
          "a5232ba5-1750-446a-beed-96b7ae1eedb8"
        ],
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "attrs": {
          "name": {
            "text": "ST_MODIFY_SPIN",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -510.5,
          "y": -2
        },
        "size": {
          "width": 295,
          "height": 330
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "0340782c-07aa-436c-9519-82c919f9397d",
        "z": 523,
        "embeds": [
          "08535d24-f372-4e57-a02f-a53f72114c2e"
        ],
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "attrs": {
          "name": {
            "text": "ST_MODIFY_SPEED",
            "fontSize": 12
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -825.0000610351562,
          "y": -202.00003051757812
        },
        "id": "a4295e81-5e5e-48c7-995e-810e7883d460",
        "z": 534,
        "parent": "44f5cce0-0c17-4ba2-8cbb-c05f2273be8b",
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -824.0000610351562,
          "y": 40.80000305175781
        },
        "size": {
          "width": 272.3438262939453,
          "height": 284.1999969482422
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "7dc85e86-bdf8-4b3d-9739-b6dabc9d1125",
        "z": 535,
        "embeds": [
          "9834b7a0-dca3-4813-968f-8e818758bf1d",
          "a675eddf-ce87-40da-b6c2-f7df825e1b1c",
          "ffe05072-86b8-4b99-80c5-a217954e8fbf",
          "39e96207-34be-4769-b4ca-b2e3cde36166",
          "4f5f5d4a-67c8-4502-a724-759e8184de0b",
          "5c764c6c-c009-47ea-b5fa-2de10b0611ae",
          "d8a7d418-4e64-4e48-b950-186d909a5493"
        ],
        "parent": "d26aa369-25d1-4eb1-bfeb-fc39cdcca6e0",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -509.5,
          "y": 19.800003051757812
        },
        "size": {
          "width": 293,
          "height": 307.1999969482422
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "08535d24-f372-4e57-a02f-a53f72114c2e",
        "z": 537,
        "embeds": [
          "4bb324cd-ecc0-42d9-9721-7ceb0bca9230",
          "2bcc76f8-b2d7-498b-a6ef-d08628b29701",
          "abf4dc21-9c2c-4215-9ab2-ca45b69321b2",
          "631936f6-ae3e-458f-8b2c-097c1177c3fa"
        ],
        "parent": "0340782c-07aa-436c-9519-82c919f9397d",
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -805.0000610351562,
          "y": 52.999977111816406
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "39e96207-34be-4769-b4ca-b2e3cde36166",
        "z": 538,
        "parent": "7dc85e86-bdf8-4b3d-9739-b6dabc9d1125",
        "embeds": [
          "2f2135e5-dd84-41d4-b1c4-f5be5b41f535"
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -805.0000610351562,
          "y": 99
        },
        "size": {
          "width": 96.39999389648438,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "4f5f5d4a-67c8-4502-a724-759e8184de0b",
        "z": 539,
        "parent": "7dc85e86-bdf8-4b3d-9739-b6dabc9d1125",
        "embeds": [
          "6f08d09c-80c9-4229-b677-eed770177635"
        ],
        "attrs": {
          "name": {
            "text": "ST_POWER_OFF",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -807.0000610351562,
          "y": 209.8000030517578
        },
        "size": {
          "width": 96.39999389648438,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "5c764c6c-c009-47ea-b5fa-2de10b0611ae",
        "z": 540,
        "embeds": [
          "6aad9e1b-13ab-40af-89aa-16b4b69ac56f"
        ],
        "parent": "7dc85e86-bdf8-4b3d-9739-b6dabc9d1125",
        "attrs": {
          "name": {
            "text": "ST_POWER_ON",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -694,
          "y": 228
        },
        "size": {
          "width": 133.34376525878906,
          "height": 70.19999694824219
        },
        "angle": 0,
        "linkable": false,
        "id": "d8a7d418-4e64-4e48-b950-186d909a5493",
        "z": 541,
        "parent": "7dc85e86-bdf8-4b3d-9739-b6dabc9d1125",
        "attrs": {
          "label": {
            "text": "En EV_ENTER\nse guardan\nON u OFF en\ndata[motor].power",
            "annotations": [
              {
                "start": 0,
                "end": 52,
                "attrs": {
                  "fill": "#333333",
                  "font-size": 12,
                  "font-weight": "normal",
                  "text-decoration": "none",
                  "font-style": "normal",
                  "font-family": "'Roboto Mono', monospace"
                }
              }
            ]
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -488.5,
          "y": 52.999977111816406
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "2bcc76f8-b2d7-498b-a6ef-d08628b29701",
        "z": 552,
        "parent": "08535d24-f372-4e57-a02f-a53f72114c2e",
        "embeds": [
          "4f48a79d-7fc5-4156-9568-160885a1e099"
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -426.6579475402832,
          "y": 97
        },
        "size": {
          "width": 96.39999389648438,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "abf4dc21-9c2c-4215-9ab2-ca45b69321b2",
        "z": 553,
        "embeds": [
          "bc79f42c-14db-4cfe-87e0-e05a5ce1b81d",
          "89150916-daf6-46eb-84d8-3cda4d087792"
        ],
        "parent": "08535d24-f372-4e57-a02f-a53f72114c2e",
        "attrs": {
          "name": {
            "text": "ST_SPEED",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -428.6579475402832,
          "y": 244.09719848632812
        },
        "size": {
          "width": 132.3158950805664,
          "height": 69.90280151367188
        },
        "angle": 0,
        "linkable": false,
        "id": "631936f6-ae3e-458f-8b2c-097c1177c3fa",
        "z": 554,
        "parent": "08535d24-f372-4e57-a02f-a53f72114c2e",
        "attrs": {
          "label": {
            "text": "En EV_ENTER\nse guarda\nspeed en\ndata[motor].speed",
            "annotations": [
              {
                "start": 0,
                "end": 48,
                "attrs": {
                  "fill": "#333333",
                  "font-size": 12,
                  "font-weight": "normal",
                  "text-decoration": "none",
                  "font-style": "normal",
                  "font-family": "'Roboto Mono', monospace"
                }
              }
            ]
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -805.0000610351562,
          "y": 67.9999771118164
        },
        "id": "2f2135e5-dd84-41d4-b1c4-f5be5b41f535",
        "z": 556,
        "parent": "39e96207-34be-4769-b4ca-b2e3cde36166",
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -488.5,
          "y": 67.9999771118164
        },
        "id": "4f48a79d-7fc5-4156-9568-160885a1e099",
        "z": 562,
        "parent": "2bcc76f8-b2d7-498b-a6ef-d08628b29701",
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "2bcc76f8-b2d7-498b-a6ef-d08628b29701"
        },
        "target": {
          "id": "abf4dc21-9c2c-4215-9ab2-ca45b69321b2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 16,
              "dy": 24.5634765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "/ speed = 0"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "4bb324cd-ecc0-42d9-9721-7ceb0bca9230",
        "z": 563,
        "parent": "08535d24-f372-4e57-a02f-a53f72114c2e",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "0340782c-07aa-436c-9519-82c919f9397d"
        },
        "target": {
          "id": "bf78f5a7-9f7c-44fe-a2ae-4dc4ec3beb78",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 84.39999389648438,
              "dy": 50.0634765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ESCAPE"
              }
            },
            "position": {
              "distance": 0.30257510729613735,
              "offset": -3,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "265fadc1-f396-4a7c-bf4f-7350ab2eb1bf",
        "z": 563,
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "bf78f5a7-9f7c-44fe-a2ae-4dc4ec3beb78"
        },
        "target": {
          "id": "0340782c-07aa-436c-9519-82c919f9397d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 110,
              "dy": 24.563477516174316,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ENTER"
              }
            },
            "position": {
              "distance": 0.44849785407725323,
              "offset": -7,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "ef849f85-3ad2-4e93-a391-93662c00d002",
        "z": 563,
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "6d771e56-69db-4a49-b54c-f8e47c47c569"
        },
        "target": {
          "id": "528a7874-4c45-4d0e-82ad-6069abe1f4f4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 24,
              "dy": 65.0634765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ESCAPE"
              }
            },
            "position": {
              "distance": 0.3192392305471881,
              "offset": -7,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "36b608cf-af50-4862-909f-a90be330ed3a",
        "z": 563,
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "bf78f5a7-9f7c-44fe-a2ae-4dc4ec3beb78"
        },
        "target": {
          "id": "528a7874-4c45-4d0e-82ad-6069abe1f4f4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 44,
              "dy": 47.5634765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_NEXT"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e9919f79-d041-4687-abbc-e41a45fd2170",
        "z": 563,
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "528a7874-4c45-4d0e-82ad-6069abe1f4f4"
        },
        "target": {
          "id": "6d771e56-69db-4a49-b54c-f8e47c47c569",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 110,
              "dy": 21.763473510742188,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ENTER"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b8c7732a-e267-457a-9881-7dc047eb99b2",
        "z": 563,
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "5c764c6c-c009-47ea-b5fa-2de10b0611ae",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 28.00006103515625,
              "dy": 66.76347351074219,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "5c764c6c-c009-47ea-b5fa-2de10b0611ae",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 75.00006103515625,
              "dy": 50.76347351074219,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ENTER"
              }
            },
            "position": {
              "distance": 0.4789698333979341,
              "offset": 16,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "6aad9e1b-13ab-40af-89aa-16b4b69ac56f",
        "z": 563,
        "vertices": [
          {
            "x": -732,
            "y": 301
          }
        ],
        "parent": "5c764c6c-c009-47ea-b5fa-2de10b0611ae",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "5c764c6c-c009-47ea-b5fa-2de10b0611ae"
        },
        "target": {
          "id": "4f5f5d4a-67c8-4502-a724-759e8184de0b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 70.00006103515625,
              "dy": 53,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_NEXT"
              }
            },
            "position": {
              "distance": 0.43589756631443655,
              "offset": 30.000000000000004,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "a675eddf-ce87-40da-b6c2-f7df825e1b1c",
        "z": 563,
        "parent": "7dc85e86-bdf8-4b3d-9739-b6dabc9d1125",
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "4f5f5d4a-67c8-4502-a724-759e8184de0b"
        },
        "target": {
          "id": "4f5f5d4a-67c8-4502-a724-759e8184de0b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 82.00006103515625,
              "dy": 1,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ENTER"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "6f08d09c-80c9-4229-b677-eed770177635",
        "z": 563,
        "parent": "4f5f5d4a-67c8-4502-a724-759e8184de0b",
        "vertices": [
          {
            "x": -756.8,
            "y": 72
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "4f5f5d4a-67c8-4502-a724-759e8184de0b"
        },
        "target": {
          "id": "5c764c6c-c009-47ea-b5fa-2de10b0611ae",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20.00006103515625,
              "dy": 21.763473510742188,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_NEXT"
              }
            },
            "position": {
              "distance": 0.478632348215478,
              "offset": 31,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "9834b7a0-dca3-4813-968f-8e818758bf1d",
        "z": 563,
        "parent": "7dc85e86-bdf8-4b3d-9739-b6dabc9d1125",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "39e96207-34be-4769-b4ca-b2e3cde36166"
        },
        "target": {
          "id": "4f5f5d4a-67c8-4502-a724-759e8184de0b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 16,
              "dy": 24.5634765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "ffe05072-86b8-4b99-80c5-a217954e8fbf",
        "z": 563,
        "parent": "7dc85e86-bdf8-4b3d-9739-b6dabc9d1125",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "528a7874-4c45-4d0e-82ad-6069abe1f4f4"
        },
        "target": {
          "id": "61d58629-e2a1-44b1-b4d2-3f0d98400e89",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 85.00006103515625,
              "dy": 28.563552856445312,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_NEXT"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "4b1fa9d7-5c75-4672-a0aa-7aa04d5bd936",
        "z": 563,
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "vertices": [
          {
            "x": -539,
            "y": -206.5
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "61d58629-e2a1-44b1-b4d2-3f0d98400e89"
        },
        "target": {
          "id": "d26aa369-25d1-4eb1-bfeb-fc39cdcca6e0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 61.00006103515625,
              "dy": 8.5634765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ENTER"
              }
            },
            "position": {
              "distance": 0.5436363636363636,
              "offset": -55,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "c190e5a7-083a-408e-ae3a-e9429ec61701",
        "z": 563,
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "61d58629-e2a1-44b1-b4d2-3f0d98400e89"
        },
        "target": {
          "id": "bf78f5a7-9f7c-44fe-a2ae-4dc4ec3beb78",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 39.4000244140625,
              "dy": 44.5634765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_NEXT"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "72ec037c-069e-4592-8a81-0a2101d03080",
        "z": 563,
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "44f5cce0-0c17-4ba2-8cbb-c05f2273be8b"
        },
        "target": {
          "id": "61d58629-e2a1-44b1-b4d2-3f0d98400e89",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 55.00006103515625,
              "dy": 26.563552856445312,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "9eef6c14-c78d-43c6-a383-655a23aef985",
        "z": 563,
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "abf4dc21-9c2c-4215-9ab2-ca45b69321b2"
        },
        "target": {
          "id": "abf4dc21-9c2c-4215-9ab2-ca45b69321b2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 82.00006103515625,
              "dy": 1,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ENTER"
              }
            },
            "position": {
              "distance": 0.6520373485147152,
              "offset": -12.890217791290995,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "89150916-daf6-46eb-84d8-3cda4d087792",
        "z": 563,
        "vertices": [
          {
            "x": -385,
            "y": 67
          }
        ],
        "parent": "abf4dc21-9c2c-4215-9ab2-ca45b69321b2",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "abf4dc21-9c2c-4215-9ab2-ca45b69321b2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 26,
              "dy": 49,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "abf4dc21-9c2c-4215-9ab2-ca45b69321b2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 75,
              "dy": 55,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_NEXT / speed = (speed + 1) % 10"
              }
            },
            "position": {
              "distance": 0.7028984285372638,
              "offset": 29.344931419241718,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "bc79f42c-14db-4cfe-87e0-e05a5ce1b81d",
        "z": 564,
        "parent": "abf4dc21-9c2c-4215-9ab2-ca45b69321b2",
        "vertices": [
          {
            "x": -378.5,
            "y": 188
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d26aa369-25d1-4eb1-bfeb-fc39cdcca6e0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 28.5,
              "dy": 11.5634765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "61d58629-e2a1-44b1-b4d2-3f0d98400e89",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 29.00006103515625,
              "dy": 53.06355285644531,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ESCAPE"
              }
            },
            "position": {
              "distance": 0.43977566178729927,
              "offset": -37.02120728234526,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b159a340-8f9a-4cfd-bed5-4605173f4d8f",
        "z": 565,
        "parent": "d736ed74-5201-4631-9d02-4a411ad4489c",
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -197,
          "y": 44.600006103515625
        },
        "size": {
          "width": 277.67188262939453,
          "height": 284.1999969482422
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "a5232ba5-1750-446a-beed-96b7ae1eedb8",
        "z": 567,
        "embeds": [
          "772cda23-41db-4ba6-8df3-c7dc851dabc6",
          "46ff01a0-cc76-478d-a0bb-a84e13f3db57",
          "1f6977f4-67df-4f1d-922b-393172df111e",
          "2bc731f5-649b-4355-bba5-71d128f5aaa3",
          "863d7866-410b-4d9b-b682-78bf2d660ffb",
          "475ea860-c1f4-40d8-bbf4-a67d85a0e805",
          "7aee4d83-3355-4355-84b3-0d1fd6758f98"
        ],
        "parent": "6d771e56-69db-4a49-b54c-f8e47c47c569",
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -178,
          "y": 56.79998016357422
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "2bc731f5-649b-4355-bba5-71d128f5aaa3",
        "z": 568,
        "parent": "a5232ba5-1750-446a-beed-96b7ae1eedb8",
        "embeds": [
          "0ebc880e-4628-49ae-a2eb-90f89eba8115"
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -178,
          "y": 102.80000305175781
        },
        "size": {
          "width": 96.39999389648438,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "863d7866-410b-4d9b-b682-78bf2d660ffb",
        "z": 569,
        "parent": "a5232ba5-1750-446a-beed-96b7ae1eedb8",
        "embeds": [
          "4017c1e7-a968-4489-ad01-ed8a523510e5"
        ],
        "attrs": {
          "name": {
            "text": "ST_SPIN_LEFT",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -180,
          "y": 213.60000610351562
        },
        "size": {
          "width": 103.60000610351562,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "475ea860-c1f4-40d8-bbf4-a67d85a0e805",
        "z": 570,
        "parent": "a5232ba5-1750-446a-beed-96b7ae1eedb8",
        "embeds": [
          "70c5dd02-5575-4c46-af69-6a43074b16af"
        ],
        "attrs": {
          "name": {
            "text": "ST_SPIN_RIGHT",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -61.67188262939453,
          "y": 95.9000015258789
        },
        "size": {
          "width": 133.34376525878906,
          "height": 70.19999694824219
        },
        "angle": 0,
        "linkable": false,
        "id": "7aee4d83-3355-4355-84b3-0d1fd6758f98",
        "z": 574,
        "parent": "a5232ba5-1750-446a-beed-96b7ae1eedb8",
        "attrs": {
          "label": {
            "text": "En EV_ENTER\nse guarda\nLEFT o RIGHT en\ndata[motor].spin",
            "annotations": [
              {
                "start": 0,
                "end": 54,
                "attrs": {
                  "fill": "#333333",
                  "font-size": 12,
                  "font-weight": "normal",
                  "text-decoration": "none",
                  "font-style": "normal",
                  "font-family": "'Roboto Mono', monospace"
                }
              }
            ]
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -178,
          "y": 71.79998016357422
        },
        "id": "0ebc880e-4628-49ae-a2eb-90f89eba8115",
        "z": 575,
        "parent": "2bc731f5-649b-4355-bba5-71d128f5aaa3",
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "475ea860-c1f4-40d8-bbf4-a67d85a0e805"
        },
        "target": {
          "id": "863d7866-410b-4d9b-b682-78bf2d660ffb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 70.00006103515625,
              "dy": 53,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_NEXT"
              }
            },
            "position": {
              "distance": 0.43589756631443655,
              "offset": 30.000000000000004,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "46ff01a0-cc76-478d-a0bb-a84e13f3db57",
        "z": 576,
        "vertices": [],
        "parent": "a5232ba5-1750-446a-beed-96b7ae1eedb8",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "863d7866-410b-4d9b-b682-78bf2d660ffb"
        },
        "target": {
          "id": "475ea860-c1f4-40d8-bbf4-a67d85a0e805",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20.00006103515625,
              "dy": 21.763473510742188,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_NEXT"
              }
            },
            "position": {
              "distance": 0.478632348215478,
              "offset": 31,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "772cda23-41db-4ba6-8df3-c7dc851dabc6",
        "z": 576,
        "parent": "a5232ba5-1750-446a-beed-96b7ae1eedb8",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "2bc731f5-649b-4355-bba5-71d128f5aaa3"
        },
        "target": {
          "id": "863d7866-410b-4d9b-b682-78bf2d660ffb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 16,
              "dy": 24.5634765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1f6977f4-67df-4f1d-922b-393172df111e",
        "z": 576,
        "parent": "a5232ba5-1750-446a-beed-96b7ae1eedb8",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "863d7866-410b-4d9b-b682-78bf2d660ffb"
        },
        "target": {
          "id": "863d7866-410b-4d9b-b682-78bf2d660ffb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 82.00006103515625,
              "dy": 1,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ENTER"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "4017c1e7-a968-4489-ad01-ed8a523510e5",
        "z": 576,
        "vertices": [
          {
            "x": -129.8,
            "y": 72
          }
        ],
        "parent": "863d7866-410b-4d9b-b682-78bf2d660ffb",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "475ea860-c1f4-40d8-bbf4-a67d85a0e805",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 28.00006103515625,
              "dy": 66.76347351074219,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "475ea860-c1f4-40d8-bbf4-a67d85a0e805",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 81,
              "dy": 58.399993896484375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ENTER"
              }
            },
            "position": {
              "distance": 0.4789698333979341,
              "offset": 16,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "70c5dd02-5575-4c46-af69-6a43074b16af",
        "z": 577,
        "vertices": [
          {
            "x": -104.99993896484375,
            "y": 304.8000030517578
          }
        ],
        "parent": "475ea860-c1f4-40d8-bbf4-a67d85a0e805",
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "InteractiveMenuStatechart",
          "statemachinePrefix": "interactiveMenuStatechart",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": "",
          "exitState": "",
          "generic": ""
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}