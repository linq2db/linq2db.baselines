-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	MAX(`id`.`ChildID`)
FROM
	`Child` `id`
GROUP BY
	`id`.`ParentID`

