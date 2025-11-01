-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @offset Int32
SET     @offset = -1

UPDATE
	`Issue4963Table` `t1`
SET
	`t1`.`Field` = CAST(CAST(`t1`.`Field` AS SIGNED) + @offset AS UNSIGNED)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Field`
FROM
	`Issue4963Table` `t1`
LIMIT 2

