﻿BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `BigDecimalMySqlConnectorTable`
(
	`Id`       INT             NOT NULL,
	`Decimal`  decimal(65, 30) NOT NULL,
	`DecimalN` decimal(65, 30)     NULL
)

BeforeExecute
-- MySqlConnector MySql

SELECT 12345678901234567890123456789012345.123456789012345678901234567891

BeforeExecute
-- MySqlConnector MySql

SELECT -12345678901234567890123456789012345.123456789012345678901234567891

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `BigDecimalMySqlConnectorTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(
	1,
	12345678901234567890123456789012345.123456789012345678901234567891,
	-12345678901234567890123456789012345.123456789012345678901234567891
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `BigDecimalMySqlConnectorTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(
	2,
	-12345678901234567890123456789012345.123456789012345678901234567891,
	NULL
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector MySql

DELETE   `t1`
FROM
	`BigDecimalMySqlConnectorTable` `t1`

BeforeExecute
-- MySqlConnector MySql
DECLARE @value1 NewDecimal -- Decimal
SET     @value1 = 12345678901234567890123456789012345.123456789012345678901234567891
DECLARE @value2 NewDecimal -- Decimal
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
-- MySqlConnector MySql
DECLARE @value2 NewDecimal -- Decimal
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
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector MySql

DELETE   `t1`
FROM
	`BigDecimalMySqlConnectorTable` `t1`

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `BigDecimalMySqlConnectorTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(1,12345678901234567890123456789012345.123456789012345678901234567891,-12345678901234567890123456789012345.123456789012345678901234567891),
(2,-12345678901234567890123456789012345.123456789012345678901234567891,NULL)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `BigDecimalMySqlConnectorTable`

