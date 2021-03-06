﻿BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Entity1711`
(
	`Id` BIGINT NOT NULL,

	CONSTRAINT `PK_Entity1711` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Relationship1711`
(
	`EntityId` BIGINT  NOT NULL,
	`Deleted`  BOOLEAN NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t`.`Id`
FROM
	`Entity1711` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Relationship1711` `r`
		WHERE
			`r`.`Deleted` = 0 AND `r`.`EntityId` = `t`.`Id`
	)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Relationship1711`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Entity1711`

