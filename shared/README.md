# tdev_bodyboard

Standalone item based bodyboarding resource for FiveM.

## Requirements

- OneSync enabled.
- ESX, QBCore, Qbox, or ox_inventory.
- GTA prop `prop_boogieboard_03`.

## Install

1. Put `tdev_bodyboard` in your server resources folder.
2. Add `ensure tdev_bodyboard` after your framework and inventory resources.
3. Add the `body_board` item:
   - ox_inventory: copy `install/ox_inventory_items.lua` into `ox_inventory/data/items.lua`.
   - QBCore: copy `install/qb-core_items.lua` into `qb-core/shared/items.lua`.
   - Qbox: use the ox_inventory snippet from `install/qbox_items.lua`.
   - ESX: run `install/esx_items.sql`.
4. Give players the `body_board` item.

## Player Flow

1. Use the `body_board` item.
2. The player carries the bodyboard and can walk normally.
3. Press `Y` over water to drop the bodyboard.
4. Press `F` near the bodyboard to get on it.
5. Move with `W/S` and steer with `A/D`.
6. Press `X` while mounted to exit. The bodyboard is removed from the world and returned to the player inventory.
7. Press `E` near an unmounted bodyboard to pick it up.

## Safety

- The item is validated on the server when used.
- The item is removed only when the bodyboard is actually dropped into water.
- The item is returned server-side on exit, pickup, reset, player death, distance cleanup, and resource cleanup.
- If the inventory is full during return, the item is queued. Free inventory space and use `/bodyboardrecover`.
- `/bodyboardreset` forces cleanup for the player.
- Client-side events do not grant free bodyboards: the server returns an item only if it previously removed one.

## Configuration

Edit `config.lua` for:

- Framework/inventory detection.
- Item name.
- Keybind controls.
- Carry prop offsets.
- Bodyboard movement tuning.
- Crawling animation and attach offsets.
- Recovery/reset command names.
