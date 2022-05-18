﻿BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `BigDecimalMySqlDataTable`
(
	`Id`       INT             NOT NULL,
	`Decimal`  decimal(65, 30) NOT NULL,
	`DecimalN` decimal(65, 30)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 12345678901234567890123456789012345.123456789012345678901234567891

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT -12345678901234567890123456789012345.123456789012345678901234567891

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Decimal_1 VarChar(66) -- AnsiString
SET     @Decimal_1 = '12345678901234567890123456789012345.123456789012345678901234567891'
DECLARE @DecimalN VarChar(67) -- AnsiString
SET     @DecimalN = '-12345678901234567890123456789012345.123456789012345678901234567891'

INSERT INTO `BigDecimalMySqlDataTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(
	@Id,
	@Decimal_1,
	@DecimalN
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Decimal_1 VarChar(67) -- AnsiString
SET     @Decimal_1 = '-12345678901234567890123456789012345.123456789012345678901234567891'
DECLARE @DecimalN Decimal
SET     @DecimalN = NULL

INSERT INTO `BigDecimalMySqlDataTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(
	@Id,
	@Decimal_1,
	@DecimalN
)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlDataTable` `t1`
LIMIT 2

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE   `t1`
FROM
	`BigDecimalMySqlDataTable` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @value1 VarChar(66) -- AnsiString
SET     @value1 = '12345678901234567890123456789012345.123456789012345678901234567891'
DECLARE @value2 VarChar(67) -- AnsiString
SET     @value2 = '-12345678901234567890123456789012345.123456789012345678901234567891'

INSERT INTO `BigDecimalMySqlDataTable`
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
-- MariaDB MySql.Official MySql
DECLARE @value2 VarChar(67) -- AnsiString
SET     @value2 = '-12345678901234567890123456789012345.123456789012345678901234567891'

INSERT INTO `BigDecimalMySqlDataTable`
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
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlDataTable` `t1`
LIMIT 2

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE   `t1`
FROM
	`BigDecimalMySqlDataTable` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Decimal_1 VarChar(66) -- AnsiString
SET     @Decimal_1 = '12345678901234567890123456789012345.123456789012345678901234567891'
DECLARE @DecimalN VarChar(67) -- AnsiString
SET     @DecimalN = '-12345678901234567890123456789012345.123456789012345678901234567891'

INSERT INTO `BigDecimalMySqlDataTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(
	@Id,
	@Decimal_1,
	@DecimalN
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Decimal_1 VarChar(67) -- AnsiString
SET     @Decimal_1 = '-12345678901234567890123456789012345.123456789012345678901234567891'
DECLARE @DecimalN Decimal
SET     @DecimalN = NULL

INSERT INTO `BigDecimalMySqlDataTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(
	@Id,
	@Decimal_1,
	@DecimalN
)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlDataTable` `t1`
LIMIT 2

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `BigDecimalMySqlDataTable`

