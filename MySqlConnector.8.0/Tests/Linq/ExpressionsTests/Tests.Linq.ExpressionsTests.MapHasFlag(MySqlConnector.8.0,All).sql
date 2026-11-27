-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @flag Int32
SET     @flag = 7

SELECT
	`t`.`Id`,
	`t`.`Value`,
	`t`.`Flags`
FROM
	`MappingTestClass` `t`
WHERE
	CAST(`t`.`Flags` & @flag AS SIGNED) = @flag

