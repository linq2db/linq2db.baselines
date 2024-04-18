BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `cp`,
	`Child` `_`
WHERE
	`_`.`ParentID` > 0

