BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `p`,
	`Child` `ch`
WHERE
	`p`.`ParentID` = `ch`.`ParentID`

