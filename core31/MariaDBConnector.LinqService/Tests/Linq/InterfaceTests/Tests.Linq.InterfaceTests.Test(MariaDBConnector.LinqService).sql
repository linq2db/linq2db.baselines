BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Parent` `t1`
GROUP BY
	`t1`.`ParentID`

