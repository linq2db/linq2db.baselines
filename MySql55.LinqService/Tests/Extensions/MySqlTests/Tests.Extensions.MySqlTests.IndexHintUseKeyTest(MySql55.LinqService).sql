BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` USE KEY(IX_ChildIndex, IX_ChildIndex2)

