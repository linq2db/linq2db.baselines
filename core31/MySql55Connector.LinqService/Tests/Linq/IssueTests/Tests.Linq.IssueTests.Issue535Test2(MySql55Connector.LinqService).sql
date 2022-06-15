﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE `CustomerBase`
(
	`Id`           INT           AUTO_INCREMENT NOT NULL,
	`ClientType`   CHAR(6)                      NOT NULL,
	`Name`         VARCHAR(4000)                    NULL,
	`ContactEmail` VARCHAR(4000)                    NULL,
	`Enabled`      BOOLEAN                          NULL,

	CONSTRAINT `PK_CustomerBase` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @filter_1 VarChar(4) -- String
SET     @filter_1 = 'test'

SELECT
	`q`.`Id`,
	`q`.`Name`,
	`q`.`ContactEmail`,
	Coalesce(`q`.`Enabled`, 0)
FROM
	`CustomerBase` `q`
WHERE
	`q`.`ClientType` = 'Client' AND (LOCATE(@filter_1, `q`.`Name`) > 0 OR LOCATE(@filter_1, `q`.`ContactEmail`) > 0)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `CustomerBase`

