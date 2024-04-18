BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`ch`.`ParentID` * 1000
FROM
	`Child` `ch`
WHERE
	`ch`.`ParentID` * 1000 > 2000

