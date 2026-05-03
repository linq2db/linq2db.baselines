-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @flag Int32
SET     @flag = 1

SELECT
	`t`.`Id`,
	`t`.`Value`,
	`t`.`Flags`
FROM
	`MappingTestClass` `t`
WHERE
	`t`.`Flags` & @flag = @flag

