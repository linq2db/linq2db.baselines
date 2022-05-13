BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` > 1

