-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
ORDER BY
	`x`.`ChildID` % 2,
	`x`.`ChildID` DESC

