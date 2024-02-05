BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` FORCE KEY(IX_ChildIndex, IX_ChildIndex2)

