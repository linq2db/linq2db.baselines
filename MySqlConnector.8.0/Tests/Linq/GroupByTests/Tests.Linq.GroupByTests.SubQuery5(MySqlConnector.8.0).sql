BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Sum(`ch`.`ParentID`)
FROM
	`Child` `ch`
		LEFT JOIN `Parent` `pg` ON `ch`.`ParentID` = `pg`.`ParentID`
GROUP BY
	`ch`.`ChildID`

