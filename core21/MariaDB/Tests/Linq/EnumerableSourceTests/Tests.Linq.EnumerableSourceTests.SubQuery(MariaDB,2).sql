BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TableToInsert`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TableToInsert`
(
	`Id`    INT          NOT NULL,
	`Value` VARCHAR(255)     NULL,

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

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`TableToInsert` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 3 AS `Id`, 'Janet' AS `Value` FROM DUAL
				UNION ALL
				SELECT 4, 'Doe' FROM DUAL) `t1`
		WHERE
			`t`.`Id` = `t1`.`Id` AND (`t`.`Value` = `t1`.`Value` OR `t`.`Value` IS NULL AND `t1`.`Value` IS NULL)
	)

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

