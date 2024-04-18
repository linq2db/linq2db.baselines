BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`selectParam`.`ChildID`,
	Avg(`selectParam`.`ParentID`)
FROM
	`Child` `selectParam`
GROUP BY
	`selectParam`.`ChildID`

