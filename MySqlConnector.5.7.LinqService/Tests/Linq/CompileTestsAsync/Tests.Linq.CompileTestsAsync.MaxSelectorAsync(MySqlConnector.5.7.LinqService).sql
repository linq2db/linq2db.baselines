BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @p Int32
SET     @p = 2

SELECT
	MAX(`c_1`.`Id`)
FROM
	`AsyncDataTable` `c_1`
WHERE
	`c_1`.`Id` > @p

