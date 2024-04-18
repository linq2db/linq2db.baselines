BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Sum(`ch`.`ParentID`)
FROM
	`Child` `ch`
		LEFT JOIN `Parent` `pg` ON `ch`.`ParentID` = `pg`.`ParentID`
GROUP BY
	`ch`.`ChildID`

