BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `cp`,
	`Child` `_`
WHERE
	`_`.`ParentID` > 0

