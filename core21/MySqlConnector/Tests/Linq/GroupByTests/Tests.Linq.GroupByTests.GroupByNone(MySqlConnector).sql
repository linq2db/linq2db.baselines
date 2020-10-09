BeforeExecute
-- MySqlConnector MySql

SELECT 
	Min(`t1`.`ParentID`), 
	Max(`t1`.`ParentID`)
FROM
	`Parent` `t1`

