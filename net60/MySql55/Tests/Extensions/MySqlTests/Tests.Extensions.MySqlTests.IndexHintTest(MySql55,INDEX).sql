BeforeExecute
-- MySql55 MySql.Official MySql

SELECT /*+ INDEX(p parent_ix, parent2_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

