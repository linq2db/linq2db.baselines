-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT 12345678901234567890123456789012345.123456789012345678901234567891

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT -12345678901234567890123456789012345.123456789012345678901234567891

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Decimal VarChar(66) -- AnsiString
SET     @Decimal = '12345678901234567890123456789012345.123456789012345678901234567891'
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
	@Decimal,
	@DecimalN
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Decimal VarChar(67) -- AnsiString
SET     @Decimal = '-12345678901234567890123456789012345.123456789012345678901234567891'
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
	@Decimal,
	@DecimalN
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlDataTable` `t1`
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`BigDecimalMySqlDataTable`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlDataTable` `t1`
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`BigDecimalMySqlDataTable`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Decimal VarChar(66) -- AnsiString
SET     @Decimal = '12345678901234567890123456789012345.123456789012345678901234567891'
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
	@Decimal,
	@DecimalN
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Decimal VarChar(67) -- AnsiString
SET     @Decimal = '-12345678901234567890123456789012345.123456789012345678901234567891'
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
	@Decimal,
	@DecimalN
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`
FROM
	`BigDecimalMySqlDataTable` `t1`
LIMIT 2

