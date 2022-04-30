BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`FirstName`,
	Count(*)
FROM
	`Person` `t1`
GROUP BY
	`t1`.`FirstName`

