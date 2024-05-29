BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` IGNORE INDEX FOR GROUP BY(IX_ChildIndex, IX_ChildIndex2)

