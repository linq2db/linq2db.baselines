BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT 12345678901234567890123456789012345.123456789012345678901234567891

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT -12345678901234567890123456789012345.123456789012345678901234567891

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`BigDecimalMySqlConnectorTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`BigDecimalMySqlConnectorTable`

BeforeExecute
INSERT BULK `BigDecimalMySqlConnectorTable`(Id, Decimal, DecimalN

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

