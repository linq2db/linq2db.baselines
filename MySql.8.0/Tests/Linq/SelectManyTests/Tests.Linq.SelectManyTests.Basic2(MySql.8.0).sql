-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID` + 1
FROM
	`Parent` `p`
		CROSS JOIN `Child` `t1`

