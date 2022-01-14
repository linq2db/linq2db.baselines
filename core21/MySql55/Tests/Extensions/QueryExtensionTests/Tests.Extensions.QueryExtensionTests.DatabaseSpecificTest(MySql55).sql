BeforeExecute
-- MySql55 MySql.Official MySql

SELECT /*+ MAX_EXECUTION_TIME(1000) */
	`t`.`ParentID`,
	`t`.`ChildID`
FROM
	`Child` `t` USE INDEX(IX_ChildIndex)

