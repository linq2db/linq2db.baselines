BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Entity1711`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Entity1711`
(
	`Id` BIGINT NOT NULL,

	CONSTRAINT `PK_Entity1711` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Relationship1711`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Relationship1711`
(
	`EntityId` BIGINT  NOT NULL,
	`Deleted`  BOOLEAN NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t`.`Id`
FROM
	`Entity1711` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Relationship1711` `t1`
		WHERE
			`t`.`Id` = `t1`.`EntityId`
	)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Relationship1711`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Entity1711`

