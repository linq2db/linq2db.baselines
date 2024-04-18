BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Max(`ch`.`ChildID`)
FROM
	`Child` `ch`
GROUP BY
	`ch`.`ChildID`

