BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TableToInsert`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TableToInsert`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
VALUES
(3,'Janet'),
(4,'Doe')

BeforeExecute
-- MariaDB MySqlConnector MySql

UPDATE
	`TableToInsert` `t`
		INNER JOIN (
			SELECT 3 AS `Id`, 'Janet Updated' AS `Value` FROM DUAL
			UNION ALL
			SELECT 4, 'Doe Updated' FROM DUAL) `r` ON `t`.`Id` = `r`.`Id`
SET
	`t`.`Value` = `r`.`Value`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableToInsert` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TableToInsert`

