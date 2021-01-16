BeforeExecute
-- MySql55 MySql.Official MySql

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
	`DateTimeNullable`        DATETIME         NULL,

	CONSTRAINT `PK_ValueConversion` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
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

INSERT INTO `ValueConversion`
(
	`Id`,
	`Value1`,
	`Enum`,
	`Value2`,
	`BoolValue`
)
VALUES
(
	@Id,
	@Value1,
	@Enum,
	@Value2,
	@BoolValue
)

BeforeExecute
-- MySql55 MySql.Official MySql
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

INSERT INTO `ValueConversion`
(
	`Id`,
	`Value1`,
	`Value2`,
	`Enum`,
	`BoolValue`
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@BoolValue
)

BeforeExecute
-- MySql55 MySql.Official MySql
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
DECLARE @DateTimeNullable DateTime
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
	@DateTimeNullable
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `ValueConversion`

