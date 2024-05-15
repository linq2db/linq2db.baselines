BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NestingA`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NestingA`
(
	`Property1` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NestingB`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NestingB`
(
	`Property1` VARCHAR(4000)     NULL,
	`Property2` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NestingC`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NestingC`
(
	`Property1` VARCHAR(4000)     NULL,
	`Property2` VARCHAR(4000)     NULL,
	`Property3` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH `CTE_1` (`Property1`)
AS
(
	SELECT
		`a`.`Property2`
	FROM
		`NestingC` `a`
)
SELECT
	`c2`.`Property1`,
	`t_1`.`Property2`,
	`t_1`.`Property3`
FROM
	`CTE_1` `c2`
		CROSS JOIN `NestingC` `t`
		CROSS JOIN `NestingC` `t_1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NestingC`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NestingB`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NestingA`

