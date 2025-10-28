BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT 12345678901234567890123456789012345.123456789012345678901234567891

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT -12345678901234567890123456789012345.123456789012345678901234567891

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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
(
	1,
	12345678901234567890123456789012345.123456789012345678901234567891,
	-12345678901234567890123456789012345.123456789012345678901234567891
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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
INSERT BULK `BigDecimalMySqlConnectorTable`(Id, Decimal, DecimalN)

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

