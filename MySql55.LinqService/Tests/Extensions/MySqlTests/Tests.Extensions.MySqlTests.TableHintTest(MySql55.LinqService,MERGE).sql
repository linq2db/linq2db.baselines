BeforeExecute
-- MySql55 MySql.Official MySql

SELECT /*+ MERGE(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

