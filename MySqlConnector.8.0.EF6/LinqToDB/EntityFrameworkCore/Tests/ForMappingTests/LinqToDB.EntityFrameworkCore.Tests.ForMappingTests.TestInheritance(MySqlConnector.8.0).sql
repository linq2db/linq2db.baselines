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


--  MySql.8.0.MySqlConnector MySql80

SELECT
	CASE
		WHEN `t1`.`Discriminator` = 'WithInheritanceA2' THEN 1
		ELSE 0
	END,
	`t1`.`Id`,
	`t1`.`Discriminator`,
	CASE
		WHEN `t1`.`Discriminator` = 'WithInheritanceA1' THEN 1
		ELSE 0
	END,
	CASE
		WHEN `t1`.`Discriminator` = 'WithInheritanceA' THEN 1
		ELSE 0
	END,
	CASE
		WHEN `t1`.`Discriminator` = 'WithInheritance' THEN 1
		ELSE 0
	END
FROM
	`WithInheritance` `t1`
WHERE
	`t1`.`Discriminator` = 'WithInheritanceA' OR `t1`.`Discriminator` = 'WithInheritanceA1' OR
	`t1`.`Discriminator` = 'WithInheritanceA2'



