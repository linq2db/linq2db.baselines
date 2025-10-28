BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT 12345678901234567890123456789012345.123456789012345678901234567891

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT -12345678901234567890123456789012345.123456789012345678901234567891

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Decimal NewDecimal -- Decimal
SET     @Decimal = 12345678901234567890123456789012345.123456789012345678901234567891
DECLARE @DecimalN NewDecimal -- Decimal
SET     @DecimalN = -12345678901234567890123456789012345.123456789012345678901234567891

INSERT INTO `BigDecimalMySqlConnectorTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(
	@Id,
	@Decimal,
	@DecimalN
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Decimal NewDecimal -- Decimal
SET     @Decimal = -12345678901234567890123456789012345.123456789012345678901234567891
DECLARE @DecimalN NewDecimal -- Decimal
SET     @DecimalN = NULL

INSERT INTO `BigDecimalMySqlConnectorTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(
	@Id,
	@Decimal,
	@DecimalN
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`BigDecimalMySqlConnectorTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`BigDecimalMySqlConnectorTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

