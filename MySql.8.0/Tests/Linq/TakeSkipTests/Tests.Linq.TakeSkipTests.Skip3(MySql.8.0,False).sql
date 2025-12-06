-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	`ch`.`ChildID` >= 0 AND `ch`.`ChildID` <= 100
ORDER BY
	`ch`.`ParentID`,
	`ch`.`ChildID`
LIMIT 3, 9223372036854775807

