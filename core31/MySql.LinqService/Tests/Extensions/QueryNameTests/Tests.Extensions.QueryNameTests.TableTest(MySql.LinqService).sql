BeforeExecute
-- MySql MySql.Official MySql

SELECT /*+ QB_NAME(PARENT) */
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

