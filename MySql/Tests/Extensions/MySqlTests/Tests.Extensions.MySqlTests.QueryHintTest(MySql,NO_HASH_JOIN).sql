BeforeExecute
-- MySql MySql.Official MySql

SELECT /*+ NO_BKA(p) NO_HASH_JOIN(p, c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`,
	`Child` `c_1`

