BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Count(*)
FROM
	`Child` `c_1`
GROUP BY
	`c_1`.`ParentID`
HAVING
	Count(*) > 1 AND Count(*) > 1

