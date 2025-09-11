BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @skip Int32
SET     @skip = 3

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @skip, 9223372036854775807

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @skip Int32
SET     @skip = 4

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @skip, 9223372036854775807

