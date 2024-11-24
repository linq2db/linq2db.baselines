Parameters:
@p0='?' (Size = 21), @p1='?' (Size = 21), @p2='?' (Size = 21), @p3='?' (Size = 21), @p4='?' (Size = 21)

INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p0)
RETURNING `Id`;
INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p1)
RETURNING `Id`;
INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p2)
RETURNING `Id`;
INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p3)
RETURNING `Id`;
INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p4)
RETURNING `Id`;


--  MariaDB.10.MySqlConnector MySql

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



