BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`selectParam`.`ChildID`,
	Avg(`selectParam`.`ParentID`)
FROM
	`Child` `selectParam`
GROUP BY
	`selectParam`.`ChildID`

