-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	MAX(`id`.`ChildID`)
FROM
	`Child` `id`
GROUP BY
	`id`.`ParentID`

