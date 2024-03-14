BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Parent` `gr`
GROUP BY
	`gr`.`ParentID`

