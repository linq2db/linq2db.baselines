﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `BigDecimalMySqlDataTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `BigDecimalMySqlDataTable`
(
	`Id`       INT             NOT NULL,
	`Decimal`  decimal(65, 30) NOT NULL,
	`DecimalN` decimal(65, 30)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT 12345678901234567890123456789012345.123456789012345678901234567891

BeforeExecute
-- MySql MySql.Official MySql

SELECT -12345678901234567890123456789012345.123456789012345678901234567891

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `BigDecimalMySqlDataTable`
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
-- MySql MySql.Official MySql

INSERT INTO `BigDecimalMySqlDataTable`
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
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlDataTable` `t1`
LIMIT 2

BeforeExecute
-- MySql MySql.Official MySql

DELETE   `t1`
FROM
	`BigDecimalMySqlDataTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `BigDecimalMySqlDataTable`
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
-- MySql MySql.Official MySql

INSERT INTO `BigDecimalMySqlDataTable`
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
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlDataTable` `t1`
LIMIT 2

BeforeExecute
-- MySql MySql.Official MySql

DELETE   `t1`
FROM
	`BigDecimalMySqlDataTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `BigDecimalMySqlDataTable`
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
-- MySql MySql.Official MySql

INSERT INTO `BigDecimalMySqlDataTable`
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
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlDataTable` `t1`
LIMIT 2

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `BigDecimalMySqlDataTable`

