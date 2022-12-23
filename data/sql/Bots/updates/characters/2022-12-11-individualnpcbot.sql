SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `individualnpcbot` (
  `entry` int(10) UNSIGNED NOT NULL COMMENT 'creature_template.entry',
  `owner` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'characters.guid (lowguid)',
  `roles` int(10) UNSIGNED NOT NULL COMMENT 'bitmask: tank(1),dps(2),heal(4),ranged(8)',
  `spec` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `equipMhEx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipOhEx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipRhEx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipHead` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipShoulders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipChest` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipWaist` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipLegs` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipFeet` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipWrist` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipHands` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipBack` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipBody` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipFinger1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipFinger2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipTrinket1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipTrinket2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equipNeck` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `spells_disabled` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `individualnpcbot`
  ADD PRIMARY KEY (`entry`, `owner`);
COMMIT;