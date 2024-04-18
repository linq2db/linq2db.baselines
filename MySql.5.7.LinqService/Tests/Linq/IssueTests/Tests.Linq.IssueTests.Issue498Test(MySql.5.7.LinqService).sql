BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`ParentID`,
	Count(*)
FROM
	`Child` `x`
		INNER JOIN `GrandChild` `y` ON `x`.`ParentID` = `y`.`ParentID` AND `x`.`ChildID` = `y`.`ChildID`
GROUP BY
	`x`.`ParentID`

