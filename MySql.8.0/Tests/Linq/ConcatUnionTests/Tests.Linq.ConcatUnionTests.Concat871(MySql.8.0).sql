-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`c_1`.`Value1`,
	NULL
FROM
	`Parent` `c_1`
UNION ALL
SELECT
	NULL,
	`c_2`.`ParentID`
FROM
	`Child` `c_2`

