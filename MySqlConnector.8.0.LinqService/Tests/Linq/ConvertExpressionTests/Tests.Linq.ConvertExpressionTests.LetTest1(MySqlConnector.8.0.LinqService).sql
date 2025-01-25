BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	(
		SELECT
			`a_Children_1`.`ParentID`
		FROM
			`Child` `a_Children_1`
		WHERE
			`p`.`ParentID` = `a_Children_1`.`ParentID`
		LIMIT 1
	)
FROM
	`Parent` `p`
		LEFT JOIN LATERAL (
			SELECT
				`a_Children`.`ParentID`
			FROM
				`Child` `a_Children`
			WHERE
				`p`.`ParentID` = `a_Children`.`ParentID`
			LIMIT 1
		) `t1` ON 1=1
WHERE
	`t1`.`ParentID` IS NOT NULL

