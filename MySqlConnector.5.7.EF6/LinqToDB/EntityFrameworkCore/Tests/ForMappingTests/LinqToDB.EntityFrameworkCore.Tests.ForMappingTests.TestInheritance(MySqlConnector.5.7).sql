Parameters:
@p0='?' (Size = 4000), @p1='?' (Size = 4000), @p2='?' (Size = 4000), @p3='?' (Size = 4000), @p4='?' (Size = 4000)

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


-- MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Discriminator`,
	`t1`.`Id`
FROM
	`WithInheritance` `t1`
WHERE
	`t1`.`Discriminator` IN ('WithInheritanceA2', 'WithInheritanceA1', 'WithInheritanceA')



