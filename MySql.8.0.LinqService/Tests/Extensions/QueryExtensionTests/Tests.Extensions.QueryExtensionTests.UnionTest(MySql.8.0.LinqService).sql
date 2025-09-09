BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT /*+ MAX_EXECUTION_TIME(1000) */
	`t`.`ParentID`,
	`t`.`ChildID`
FROM
	`Child` `t`
UNION
SELECT
	`t_1`.`ParentID`,
	`t_1`.`ChildID`
FROM
	`Child` `t_1`
WHERE
	`t_1`.`ChildID` < 10

