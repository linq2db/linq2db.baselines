﻿Parameters:
@p0='?' (Size = 21), @p1='?' (Size = 21), @p2='?' (Size = 21), @p3='?' (Size = 21), @p4='?' (Size = 21)

INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p0);
SELECT `Id`
FROM `WithInheritance`
WHERE ROW_COUNT() = 1 AND `Id` = LAST_INSERT_ID();

INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p1);
SELECT `Id`
FROM `WithInheritance`
WHERE ROW_COUNT() = 1 AND `Id` = LAST_INSERT_ID();

INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p2);
SELECT `Id`
FROM `WithInheritance`
WHERE ROW_COUNT() = 1 AND `Id` = LAST_INSERT_ID();

INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p3);
SELECT `Id`
FROM `WithInheritance`
WHERE ROW_COUNT() = 1 AND `Id` = LAST_INSERT_ID();

INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p4);
SELECT `Id`
FROM `WithInheritance`
WHERE ROW_COUNT() = 1 AND `Id` = LAST_INSERT_ID();


