-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	`ch`.`ChildID` >= 0 AND `ch`.`ChildID` <= 100
LIMIT 3

