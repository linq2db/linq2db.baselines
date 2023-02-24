BeforeExecute
-- MySql55 MySql.Official MySql

SELECT /*+ NO_BKA(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

