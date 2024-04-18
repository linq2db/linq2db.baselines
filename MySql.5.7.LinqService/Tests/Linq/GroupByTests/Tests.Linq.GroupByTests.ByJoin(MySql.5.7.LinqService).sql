BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Sum(`c2`.`ChildID`)
FROM
	`Child` `c1`
		INNER JOIN `Child` `c2` ON `c1`.`ChildID` = `c2`.`ChildID` + 1
GROUP BY
	`c1`.`ParentID`

