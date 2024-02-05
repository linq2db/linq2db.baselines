BeforeExecute
-- MySql55 MySql.Official MySql

SELECT /*+ JOIN_PREFIX(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

