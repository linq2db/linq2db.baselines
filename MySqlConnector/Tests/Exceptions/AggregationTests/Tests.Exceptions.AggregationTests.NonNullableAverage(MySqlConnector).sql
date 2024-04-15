BeforeExecute
-- MySqlConnector MySql

SELECT
	AVG(`_`.`ParentID`)
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` < 0

