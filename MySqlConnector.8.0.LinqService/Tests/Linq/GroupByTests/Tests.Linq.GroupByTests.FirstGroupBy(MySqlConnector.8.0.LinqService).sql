BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	(
		SELECT
			`gr`.`ParentID`
		FROM
			`Child` `gr`
		GROUP BY
			`gr`.`ParentID`
	) `gr_1`
		INNER JOIN LATERAL (
			SELECT
				`t`.`ParentID`,
				`t`.`ChildID`
			FROM
				`Child` `t`
			WHERE
				`gr_1`.`ParentID` = `t`.`ParentID`
			ORDER BY
				`t`.`ChildID` DESC
			LIMIT 1
		) `t1` ON 1=1

