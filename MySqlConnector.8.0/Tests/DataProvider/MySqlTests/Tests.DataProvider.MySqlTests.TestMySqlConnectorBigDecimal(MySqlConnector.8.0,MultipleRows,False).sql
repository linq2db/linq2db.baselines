-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT 12345678901234567890123456789012345.123456789012345678901234567891

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT -12345678901234567890123456789012345.123456789012345678901234567891

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`BigDecimalMySqlConnectorTable`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`BigDecimalMySqlConnectorTable`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `BigDecimalMySqlConnectorTable`
(
	`Id`,
	`Decimal`,
	`DecimalN`
)
VALUES
(1,12345678901234567890123456789012345.123456789012345678901234567891,-12345678901234567890123456789012345.123456789012345678901234567891),
(2,-12345678901234567890123456789012345.123456789012345678901234567891,NULL)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlConnectorTable` `t1`
ORDER BY
	`t1`.`Id`

