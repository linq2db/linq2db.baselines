BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TableToInsert`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TableToInsert`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	(
		SELECT 2 AS `Id`, 'Janet' AS `Value`
		UNION ALL
		SELECT 3, 'Doe') `r`
		LEFT JOIN `TableToInsert` `t` ON `t`.`Id` = `r`.`Id`
WHERE
	`t`.`Id` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	(
		SELECT 2 AS `Id`, 'Janet' AS `Value`
		UNION ALL
		SELECT 3, 'Doe') `r`
		LEFT JOIN `TableToInsert` `t` ON `t`.`Id` = `r`.`Id`
WHERE
	`t`.`Id` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TableToInsert`

