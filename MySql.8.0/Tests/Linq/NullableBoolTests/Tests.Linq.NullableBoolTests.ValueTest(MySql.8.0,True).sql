BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value UByte -- Boolean
SET     @value = 1

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = @value

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value UByte -- Boolean
SET     @value = 1

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = @value

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value UByte -- Boolean
SET     @value = 1

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` <> @value OR `t`.`Value` IS NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value UByte -- Boolean
SET     @value = 1

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` <> @value

