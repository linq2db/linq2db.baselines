BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TableToInsert`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TableToInsert`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
VALUES
(2,'Janet'),
(3,'Doe')

BeforeExecute
-- MySqlConnector MySql

DELETE   `t`
FROM
	`TableToInsert` `t`
		INNER JOIN (
			SELECT 2 AS `Id` FROM DUAL
			UNION ALL
			SELECT 3 FROM DUAL) `r` ON `t`.`Id` = `r`.`Id`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TableToInsert`

