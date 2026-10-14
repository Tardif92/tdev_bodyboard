Config = {}

Config.Debug = false

-- auto, esx, qb, qbox, standalone
Config.Framework = 'auto'

-- auto, ox_inventory, framework
Config.Inventory = 'auto'

Config.Items = {
  board = 'body_board'
}

Config.Commands = {
  recover = 'bodyboardrecover',
  reset = 'bodyboardreset',
  use = '' -- optional testing command, example: 'bodyboard'
}

Config.Controls = {
  drop = 246, -- Y
  mount = 23, -- F / INPUT_ENTER
  exit = 73, -- X
  pickup = 38, -- E, only while not mounted
  forward = { 32, 201 }, -- W / Enter
  reverse = { 33, 203 }, -- S / Backspace
  steeringAxis = 30 -- A/D
}

Config.Carry = {
  model = 'prop_boogieboard_03',
  bone = 24818, -- SKEL_Spine2
  offset = vector3(0.05, -0.16, -0.03),
  rotation = vector3(8.0, 88.0, 8.0),
  disableControls = false,
  anim = {
    enabled = false,
    dict = 'anim@heists@box_carry@',
    name = 'idle',
    flag = 49,
    checkIntervalMs = 900
  }
}

Config.Drop = {
  forwardDistance = 1.55,
  waterOffset = 0.12,
  probeHeight = 8.0,
  retryFromPed = true
}

Config.Board = {
  model = 'prop_boogieboard_03',
  fallbackModels = {},
  vehicleModel = 'seashark',
  enterDistance = 2.4,
  pickupDistance = 2.0,
  rotationSpeed = 0.6,
  pushPower = 2.9,
  forwardImpulse = 0.024,
  reverseImpulse = 0.032,
  maxSpeed = 6.2,
  pushTicks = 50,
  mountGraceTicks = 40,
  unmountedFreezeVelocity = true,

  attach = {
    visualToVehicle = {
      offset = vector3(0.0, 0.0, 0.10),
      rotation = vector3(-90.0, 0.0, 0.0)
    },
    pedToBoard = {
      crawling = {
        offset = vector3(0.0, -0.18, 1.08),
        rotation = vector3(0.0, 0.0, 0.0)
      }
    }
  }
}

Config.Animation = {
  blendIn = 4.0,
  blendOut = -4.0,
  idleDict = 'amb@world_human_sunbathe@male@front@base',
  idle = 'base',
  idleFlag = 1,
  paddleDict = 'move_crawl',
  paddle = 'onfront_fwd',
  paddleFlag = 1,
  checkIntervalMs = 850
}

Config.Safety = {
  actionCooldownMs = 700,
  serverMaxDropDistance = 8.0,
  maxBoardDistance = 180.0,
  forceReturnOnDeath = true,
  forceReturnWhenBoardMissing = true,
  cleanupPendingItemsOnResourceStop = true,
  preventCarryInVehicle = true
}

Config.Text = {
  noItem = 'You need a bodyboard.',
  alreadyActive = 'You already have a bodyboard active.',
  carryStarted = 'Bodyboard ready.',
  carryPrompt = '[Y] Drop over water | [X] Cancel',
  dropNeedWater = 'Drop the bodyboard over water.',
  boardDropped = 'Bodyboard dropped. Press F near it to ride.',
  boardInteractPrompt = '[F] Get on bodyboard | [E] Pick up bodyboard',
  boardPickupPrompt = '[E] Pick up bodyboard',
  boardExitPrompt = '[X] Exit bodyboard',
  boardReturned = 'Bodyboard returned to your inventory.',
  boardSpawnFailed = 'Bodyboard could not be placed here.',
  inventoryFull = 'Your inventory is full. Free space and use /%s.',
  recovered = 'Recovered pending bodyboard items.',
  nothingToRecover = 'No pending bodyboard items to recover.',
  cancelled = 'Bodyboard session cleaned up.',
  tooFar = 'You moved too far from your bodyboard.',
  useBoardFirst = 'Use your bodyboard item first.'
}
