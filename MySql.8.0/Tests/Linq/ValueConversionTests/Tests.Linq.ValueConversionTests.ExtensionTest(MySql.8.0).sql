BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @testedList VarChar(20) -- String
SET     @testedList = '[{"Value":"Value1"}]'

SELECT
	`t`.`Id`,
	`t`.`Value1`,
	`t`.`Value2`,
	`t`.`Enum`,
	`t`.`EnumNullable`,
	`t`.`EnumWithNull`,
	`t`.`EnumWithNullDeclarative`,
	`t`.`BoolValue`,
	`t`.`AnotherBoolValue`,
	`t`.`DateTimeNullable`
FROM
	`ValueConversion` `t`
WHERE
	`t`.`Value2` = @testedList

