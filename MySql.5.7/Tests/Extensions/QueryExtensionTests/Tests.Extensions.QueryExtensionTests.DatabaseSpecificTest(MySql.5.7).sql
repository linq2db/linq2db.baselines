-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT /*+ MAX_EXECUTION_TIME(1000) */
	`t`.`ParentID`,
	`t`.`ChildID`
FROM
	`Child` `t` USE INDEX(IX_ChildIndex)

