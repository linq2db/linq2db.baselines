-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
UPDATE
	`ByteFieldUpdateTable` `t1`
SET
	`t1`.`Field` = CAST(CAST(`t1`.`Field` AS SIGNED) + -1 AS UNSIGNED)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`ByteFieldUpdateTable` `t1`
LIMIT 2

