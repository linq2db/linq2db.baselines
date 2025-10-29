-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c2`.`ParentID`
FROM
	`Child` `c2`
GROUP BY
	`c2`.`ParentID`
ORDER BY
	`c2`.`ParentID`

