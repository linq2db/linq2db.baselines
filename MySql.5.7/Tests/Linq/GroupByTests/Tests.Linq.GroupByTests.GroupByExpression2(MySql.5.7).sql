BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`selectParam`.`ChildID`,
	Avg(`selectParam`.`ParentID`)
FROM
	`Child` `selectParam`
GROUP BY
	`selectParam`.`ChildID`

