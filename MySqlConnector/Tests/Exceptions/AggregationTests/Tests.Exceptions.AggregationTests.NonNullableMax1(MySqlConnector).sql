BeforeExecute
-- MySqlConnector MySql

SELECT
	MAX(`_`.`ParentID`)
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` < 0

