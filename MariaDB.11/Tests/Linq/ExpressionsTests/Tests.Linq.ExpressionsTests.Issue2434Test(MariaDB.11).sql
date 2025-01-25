BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2434Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue2434Table`
(
	`Id`        INT           NOT NULL,
	`FirstName` VARCHAR(4000)     NULL,
	`LastName`  VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`FirstName`,
	`t1`.`LastName`,
	Concat(`t1`.`FirstName`, ' ', `t1`.`LastName`)
FROM
	`Issue2434Table` `t1`
ORDER BY
	Concat(`t1`.`FirstName`, ' ', `t1`.`LastName`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2434Table`

