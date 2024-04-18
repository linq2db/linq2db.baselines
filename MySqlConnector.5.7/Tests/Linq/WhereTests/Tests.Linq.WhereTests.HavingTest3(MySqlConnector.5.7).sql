BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Count(*)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`
HAVING
	`t1`.`ParentID` > 1 AND Count(*) > 1 AND `t1`.`ParentID` > 1

