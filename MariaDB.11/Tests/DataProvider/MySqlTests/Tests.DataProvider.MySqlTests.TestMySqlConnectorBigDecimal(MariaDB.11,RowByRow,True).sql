BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `BigDecimalMySqlConnectorTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `BigDecimalMySqlConnectorTable`
(
	`Id`       INT             NOT NULL,
	`Decimal`  decimal(65, 30) NOT NULL,
	`DecimalN` decimal(65, 30)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT 12345678901234567890123456789012345.123456789012345678901234567891

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT -12345678901234567890123456789012345.123456789012345678901234567891

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Decimal VarChar -- String
SET     @Decimal = 12345678901234567890123456789012345.123456789012345678901234567891
DECLARE @DecimalN VarChar -- String
SET     @DecimalN = -12345678901234567890123456789012345.123456789012345678901234567891

INSERT INTO `BigDecimalMySqlConnectorTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(
	1,
	@Decimal,
	@DecimalN
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Decimal VarChar -- String
SET     @Decimal = -12345678901234567890123456789012345.123456789012345678901234567891

INSERT INTO `BigDecimalMySqlConnectorTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(
	2,
	@Decimal,
	NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE   `t1`
FROM
	`BigDecimalMySqlConnectorTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @value1 VarChar -- String
SET     @value1 = 12345678901234567890123456789012345.123456789012345678901234567891
DECLARE @value2 VarChar -- String
SET     @value2 = -12345678901234567890123456789012345.123456789012345678901234567891

INSERT INTO `BigDecimalMySqlConnectorTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(
	1,
	@value1,
	@value2
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @value2 VarChar -- String
SET     @value2 = -12345678901234567890123456789012345.123456789012345678901234567891

INSERT INTO `BigDecimalMySqlConnectorTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(
	2,
	@value2,
	NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE   `t1`
FROM
	`BigDecimalMySqlConnectorTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Decimal VarChar -- String
SET     @Decimal = 12345678901234567890123456789012345.123456789012345678901234567891
DECLARE @DecimalN VarChar -- String
SET     @DecimalN = -12345678901234567890123456789012345.123456789012345678901234567891

INSERT INTO `BigDecimalMySqlConnectorTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(
	1,
	@Decimal,
	@DecimalN
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Decimal VarChar -- String
SET     @Decimal = -12345678901234567890123456789012345.123456789012345678901234567891

INSERT INTO `BigDecimalMySqlConnectorTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(
	2,
	@Decimal,
	NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `BigDecimalMySqlConnectorTable`

