-- =============================================================
-- Parche Base acore_world: Blood Elf Druid (Raza 10 / Clase 11)
-- =============================================================

-- 1. Posición e información de inicio (Isla Caminante del Sol - Elfo de Sangre)
DELETE FROM `playercreateinfo` WHERE `race` = 10 AND `class` = 11;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT 10, 11, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM `playercreateinfo` WHERE `race` = 10 AND `class` = 2 LIMIT 1;

-- 2. Barras de acción iniciales (Copiadas del Druida Tauren - Raza 6)
DELETE FROM `playercreateinfo_action` WHERE `race` = 10 AND `class` = 11;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT 10, 11, `button`, `action`, `type`
FROM `playercreateinfo_action`
WHERE `race` = 6 AND `class` = 11;

-- Inyectar racial de Elfo de Sangre (Torrente Arcano: 28730) en el botón 3
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES
(10, 11, 3, 28730, 0);