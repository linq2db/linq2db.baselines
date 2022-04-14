﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `TableToInsert`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TableToInsert`
(
	`Id`    INT          NOT NULL,
	`Value` VARCHAR(255)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
VALUES
(4,'Janet'),
(5,'Doe')

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t`
FROM
	`TableToInsert` `t`
		INNER JOIN (
			SELECT 4 AS `Id` FROM DUAL
			UNION ALL
			SELECT 5 FROM DUAL) `r` ON `t`.`Id` = `r`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `TableToInsert`

