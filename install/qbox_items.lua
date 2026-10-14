-- Qbox usually uses ox_inventory. Add this entry to ox_inventory/data/items.lua.

['body_board'] = {
  label = 'Bodyboard',
  weight = 1500,
  stack = false,
  close = true,
  description = 'A compact bodyboard for riding over the water.',
  client = {
    export = 'tdev_bodyboard.useBodyBoard'
  }
},
