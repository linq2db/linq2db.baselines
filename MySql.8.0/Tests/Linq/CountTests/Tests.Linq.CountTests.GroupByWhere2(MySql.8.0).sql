BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`g_1`.`ParentID`
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`
HAVING
	COUNT(*) > 2

