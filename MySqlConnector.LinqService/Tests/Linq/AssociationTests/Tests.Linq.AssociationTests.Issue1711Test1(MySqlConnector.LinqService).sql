BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Entity1711`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Entity1711`
(
	`Id` BIGINT NOT NULL,

	CONSTRAINT `PK_Entity1711` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Relationship1711`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Relationship1711`
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
			`Relationship1711` `a_relationship`
		WHERE
			`t`.`Id` = `a_relationship`.`EntityId`
	)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Relationship1711`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Entity1711`

