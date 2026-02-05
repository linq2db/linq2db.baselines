-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN LATERAL (
			SELECT DISTINCT
				`a_Children`.`ParentID`,
				`a_Children`.`ChildID`
			FROM
				`Child` `a_Children`
			WHERE
				`p`.`ParentID` = `a_Children`.`ParentID` AND `a_Children`.`ParentID` > 0
			ORDER BY
				`a_Children`.`ChildID`
			LIMIT 1
		) `t1` ON 1=1

