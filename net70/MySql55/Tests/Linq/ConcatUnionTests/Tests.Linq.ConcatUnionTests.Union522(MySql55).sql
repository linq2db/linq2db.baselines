BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`p1`.`Value1`,
	NULL
FROM
	`Parent` `p1`
UNION
SELECT
	`p2`.`Value1`,
	`p2`.`ParentID`
FROM
	`Parent` `p2`

