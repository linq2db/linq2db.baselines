BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @iteration Int32
SET     @iteration = 1
DECLARE @Value1 VarChar(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @inserted VarChar(22) -- String
SET     @inserted = '[{"Value":"inserted"}]'
DECLARE @boolValue VarChar -- AnsiString
SET     @boolValue = 'N'
DECLARE @boolValue_1 VarChar -- AnsiString
SET     @boolValue_1 = 'F'

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
SET     @iteration = 1

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

