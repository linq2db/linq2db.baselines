BeforeExecute
-- MySqlConnector MySql

SELECT
	Min(`gr`.`ParentID`),
	Max(`gr`.`ParentID`)
FROM
	`Parent` `gr`

