-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	(`t`.`ParentID` * 1000) / 1000
FROM
	`Child` `t`
WHERE
	`t`.`ParentID` * 1000 > 2000

