BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`_`.`ChildID`,
	AVG(`_`.`ParentID`)
FROM
	`Child` `_`
GROUP BY
	`_`.`ChildID`

