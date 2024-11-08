BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`
FROM
	`Parent` `p`
		INNER JOIN LATERAL (
			SELECT
				`ch`.`ParentID`
			FROM
				`Child` `ch`
			WHERE
				`p`.`ParentID` = `ch`.`ParentID`
			LIMIT 1
		) `t1` ON 1=1
WHERE
	`p`.`ParentID` = 1

