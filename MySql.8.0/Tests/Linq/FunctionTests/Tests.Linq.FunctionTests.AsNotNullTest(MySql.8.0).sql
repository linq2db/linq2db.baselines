BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p1`.`ParentID`,
	`p1`.`Value1`
FROM
	`Parent` `p1`,
	`Parent` `p2`
WHERE
	`p1`.`Value1` = `p2`.`Value1`

