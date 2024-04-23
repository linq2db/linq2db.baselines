BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
GROUP BY
	`c_1`.`ParentID`
HAVING
	COUNT(*) > 1

