BeforeExecute
-- MySql55 MySql.Official MySql

SELECT /*+ NO_BNL(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

