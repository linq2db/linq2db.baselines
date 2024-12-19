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
DECLARE @Integer Int32
SET     @Integer = 100
DECLARE @Decimal NewDecimal(3, 0) -- Decimal
SET     @Decimal = 100
DECLARE @Double Double
SET     @Double = 100

INSERT INTO `Issue4469Table`
(
	`Integer`,
	`Decimal`,
	`Double`
)
VALUES
(
	@Integer,
	@Decimal,
	@Double
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CAST(`v`.`Integer` AS DOUBLE) / 33,
	`v`.`Decimal` / 33,
	`v`.`Double` / 33
FROM
	`Issue4469Table` `v`
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4469Table`

