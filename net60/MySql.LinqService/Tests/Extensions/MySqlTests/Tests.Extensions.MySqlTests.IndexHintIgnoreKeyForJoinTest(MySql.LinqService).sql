BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` IGNORE KEY FOR JOIN(IX_ChildIndex, IX_ChildIndex2)

