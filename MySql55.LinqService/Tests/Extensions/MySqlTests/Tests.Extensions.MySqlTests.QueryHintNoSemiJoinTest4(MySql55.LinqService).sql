BeforeExecute
-- MySql55 MySql.Official MySql

SELECT /*+ NO_SEMIJOIN(FIRSTMATCH, LOOSESCAN) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`,
	`Child` `c_1`

