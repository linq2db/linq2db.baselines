-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @flag Int32
SET     @flag = 1

SELECT
	`t`.`Id`,
	`t`.`Value`,
	`t`.`Flags`
FROM
	`MappingTestClass` `t`
WHERE
	(`t`.`Flags` & @flag) = @flag

