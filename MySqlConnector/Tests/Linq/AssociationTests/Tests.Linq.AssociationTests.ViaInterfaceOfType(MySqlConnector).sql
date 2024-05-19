BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `MainEntity`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `MainEntity`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_MainEntity` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SubEntity`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SubEntity`
(
	`Id`           INT NOT NULL,
	`MainEntityId` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	(
		SELECT
			Count(*)
		FROM
			`SubEntity` `t1`
		WHERE
			`x`.`Id` = `t1`.`MainEntityId`
	)
FROM
	`MainEntity` `x`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SubEntity`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `MainEntity`

