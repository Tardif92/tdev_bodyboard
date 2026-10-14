INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`)
VALUES ('body_board', 'Bodyboard', 1500, 0, 1)
ON DUPLICATE KEY UPDATE `label` = VALUES(`label`), `weight` = VALUES(`weight`), `can_remove` = VALUES(`can_remove`);
