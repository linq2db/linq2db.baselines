BeforeExecute
-- MySql55 MySql.Official MySql

SELECT /*+ SEMIJOIN(FIRSTMATCH, LOOSESCAN) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`,
	`Child` `c_1`

