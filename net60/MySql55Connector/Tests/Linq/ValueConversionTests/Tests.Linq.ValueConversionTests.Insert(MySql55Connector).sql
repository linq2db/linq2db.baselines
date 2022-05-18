﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE `ValueConversion`
(
	`Id`                      INT          NOT NULL,
	`Value1`                  VARCHAR(200)     NULL,
	`Value2`                  VARCHAR(200)     NULL,
	`Enum`                    VARCHAR(50)  NOT NULL,
	`EnumNullable`            VARCHAR(50)      NULL,
	`EnumWithNull`            VARCHAR(50)      NULL,
	`EnumWithNullDeclarative` VARCHAR(50)      NULL,
	`BoolValue`               VARCHAR(1)   NOT NULL,
	`AnotherBoolValue`        VARCHAR(1)   NOT NULL,
	`DateTimeNullable`        DATETIME         NULL,

	CONSTRAINT `PK_ValueConversion` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value1 VarChar(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @Value2 VarChar(22) -- String
SET     @Value2 = '[{"Value":"inserted"}]'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'Y'
DECLARE @AnotherBoolValue VarChar -- AnsiString
SET     @AnotherBoolValue = 'T'

INSERT INTO `ValueConversion`
(
	`Id`,
	`Value1`,
	`Enum`,
	`Value2`,
	`BoolValue`,
	`AnotherBoolValue`
)
VALUES
(
	@Id,
	@Value1,
	@Enum,
	@Value2,
	@BoolValue,
	@AnotherBoolValue
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`e`.`Id`,
	`e`.`Value1`,
	`e`.`Value2`,
	`e`.`Enum`,
	`e`.`EnumNullable`,
	`e`.`EnumWithNull`,
	`e`.`EnumWithNullDeclarative`,
	`e`.`BoolValue`,
	`e`.`AnotherBoolValue`,
	`e`.`DateTimeNullable`
FROM
	`ValueConversion` `e`
WHERE
	`e`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value1 VarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 VarChar -- String
SET     @Value2 = NULL
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value2'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar -- AnsiString
SET     @AnotherBoolValue = 'F'

INSERT INTO `ValueConversion`
(
	`Id`,
	`Value1`,
	`Value2`,
	`Enum`,
	`BoolValue`,
	`AnotherBoolValue`
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@BoolValue,
	@AnotherBoolValue
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`e`.`Id`,
	`e`.`Value1`,
	`e`.`Value2`,
	`e`.`Enum`,
	`e`.`EnumNullable`,
	`e`.`EnumWithNull`,
	`e`.`EnumWithNullDeclarative`,
	`e`.`BoolValue`,
	`e`.`AnotherBoolValue`,
	`e`.`DateTimeNullable`
FROM
	`ValueConversion` `e`
WHERE
	`e`.`Id` = 2
LIMIT 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value1 VarChar(21) -- String
SET     @Value1 = '{"some":"inserted3}"}'
DECLARE @Value2 VarChar(23) -- String
SET     @Value2 = '[{"Value":"inserted3"}]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'Y'
DECLARE @AnotherBoolValue VarChar -- AnsiString
SET     @AnotherBoolValue = 'T'
DECLARE @DateTimeNullable Datetime -- DateTime
SET     @DateTimeNullable = NULL

INSERT INTO `ValueConversion`
(
	`Id`,
	`Value1`,
	`Value2`,
	`Enum`,
	`EnumNullable`,
	`EnumWithNull`,
	`EnumWithNullDeclarative`,
	`BoolValue`,
	`AnotherBoolValue`,
	`DateTimeNullable`
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@EnumNullable,
	@EnumWithNull,
	@EnumWithNullDeclarative,
	@BoolValue,
	@AnotherBoolValue,
	@DateTimeNullable
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`e`.`Id`,
	`e`.`Value1`,
	`e`.`Value2`,
	`e`.`Enum`,
	`e`.`EnumNullable`,
	`e`.`EnumWithNull`,
	`e`.`EnumWithNullDeclarative`,
	`e`.`BoolValue`,
	`e`.`AnotherBoolValue`,
	`e`.`DateTimeNullable`
FROM
	`ValueConversion` `e`
WHERE
	`e`.`Id` = 3
LIMIT 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`ValueConversion` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `ValueConversion`

