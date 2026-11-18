-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p Int32
SET     @p = 2
DECLARE @p_1 Int32
SET     @p_1 = 0

SELECT
	`t`.`Id`
FROM
	`CountTarget` `t`
WHERE
	`t`.`ItemsCount` = @p AND `t`.`EmptyCount` = @p_1

