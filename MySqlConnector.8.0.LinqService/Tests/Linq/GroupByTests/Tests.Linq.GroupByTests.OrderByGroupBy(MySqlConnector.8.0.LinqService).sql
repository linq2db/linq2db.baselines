BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`c2`.`ParentID`
FROM
	`Child` `c2`
GROUP BY
	`c2`.`ParentID`
ORDER BY
	`c2`.`ParentID`

