-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ParentID` + 1
FROM
	`Parent` `p`,
	`Child` `t1`
WHERE
	`t1`.`ParentID` > 0

