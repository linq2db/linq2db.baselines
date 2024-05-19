BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `MainEntity`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `MainEntity`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_MainEntity` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SubEntity`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SubEntity`
(
	`Id`           INT NOT NULL,
	`MainEntityId` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`x`.`Id`,
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
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`SubEntity` `t2`
		WHERE
			`x`.`Id` = `t2`.`MainEntityId`
	)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SubEntity`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `MainEntity`

