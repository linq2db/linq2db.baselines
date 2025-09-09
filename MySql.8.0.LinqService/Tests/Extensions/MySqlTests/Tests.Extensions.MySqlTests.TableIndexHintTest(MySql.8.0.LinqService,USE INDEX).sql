BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT /*+ BKA(p) MAX_EXECUTION_TIME(1000) */
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` USE INDEX(IX_ChildIndex, IX_ChildIndex2)

