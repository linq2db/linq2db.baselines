BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`selectParam`.`ChildID`,
	Avg(`selectParam`.`ParentID`)
FROM
	`Child` `selectParam`
GROUP BY
	`selectParam`.`ChildID`

