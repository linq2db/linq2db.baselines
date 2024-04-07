BeforeExecute
-- MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Parent` `gr`
GROUP BY
	`gr`.`ParentID`

