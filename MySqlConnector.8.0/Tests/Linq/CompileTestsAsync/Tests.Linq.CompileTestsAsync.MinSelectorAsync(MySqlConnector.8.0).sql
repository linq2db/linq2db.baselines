-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p Int32
SET     @p = 2

SELECT
	MIN(`c_1`.`Id`)
FROM
	`AsyncDataTable` `c_1`
WHERE
	`c_1`.`Id` > @p

