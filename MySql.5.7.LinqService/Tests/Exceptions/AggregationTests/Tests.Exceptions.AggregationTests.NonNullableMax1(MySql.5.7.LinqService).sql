BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	MAX(`t1`.`ParentID`)
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` < 0

