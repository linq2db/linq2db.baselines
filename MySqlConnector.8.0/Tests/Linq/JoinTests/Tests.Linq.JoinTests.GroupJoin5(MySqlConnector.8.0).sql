BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Parent` `t2`
		LEFT JOIN LATERAL (
			SELECT
				`ch`.`ParentID`,
				`ch`.`ChildID`
			FROM
				`Child` `ch`
			WHERE
				`t2`.`ParentID` = `ch`.`ParentID`
			ORDER BY
				`ch`.`ChildID`
			LIMIT 1
		) `t1` ON 1=1
WHERE
	`t2`.`ParentID` >= 1
ORDER BY
	`t2`.`ParentID`

