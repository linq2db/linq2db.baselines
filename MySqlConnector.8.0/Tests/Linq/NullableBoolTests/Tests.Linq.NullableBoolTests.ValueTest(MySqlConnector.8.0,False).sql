-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @value Bool -- Boolean
SET     @value = 0

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = @value

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @value Bool -- Boolean
SET     @value = 0

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = @value

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @value Bool -- Boolean
SET     @value = 0

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` <> @value OR `t`.`Value` IS NULL

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @value Bool -- Boolean
SET     @value = 0

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` <> @value

