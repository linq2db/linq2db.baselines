-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	MIN(`t1`.`ParentID`)
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` < 0

