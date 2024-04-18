BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Count(*)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`
HAVING
	`t1`.`ParentID` > 1 AND Count(*) > 1 AND `t1`.`ParentID` > 1

