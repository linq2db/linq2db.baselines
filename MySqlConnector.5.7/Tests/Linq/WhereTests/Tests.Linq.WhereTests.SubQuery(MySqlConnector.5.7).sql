-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(`t`.`ParentID` * 1000) / 1000
FROM
	`Child` `t`
WHERE
	`t`.`ParentID` * 1000 > 2000

