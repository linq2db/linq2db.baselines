BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4469Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4469Table`
(
	`Integer` INT            NOT NULL,
	`Decimal` DECIMAL(10, 5) NOT NULL,
	`Double`  DOUBLE         NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Issue4469Table`
(
	`Integer`,
	`Decimal`,
	`Double`
)
VALUES
(100,100,100)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @param Int32
SET     @param = 33

SELECT
	`v`.`Integer` / @param,
	`v`.`Decimal` / @param,
	`v`.`Double` / @param
FROM
	`Issue4469Table` `v`
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4469Table`

