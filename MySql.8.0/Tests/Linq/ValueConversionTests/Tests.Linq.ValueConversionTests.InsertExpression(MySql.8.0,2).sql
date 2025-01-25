BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `ValueConversion`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `ValueConversion`
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @iteration Int32
SET     @iteration = 2
DECLARE @Value1 VarChar(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @inserted VarChar(22) -- String
SET     @inserted = '[{"Value":"inserted"}]'
DECLARE @boolValue VarChar -- AnsiString
SET     @boolValue = 'Y'
DECLARE @boolValue_1 VarChar -- AnsiString
SET     @boolValue_1 = 'T'

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
	@iteration,
	@Value1,
	@Enum,
	@inserted,
	@boolValue,
	@boolValue_1
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @iteration Int32
SET     @iteration = 2

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
	`e`.`Id` = @iteration
LIMIT 2

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `ValueConversion`

