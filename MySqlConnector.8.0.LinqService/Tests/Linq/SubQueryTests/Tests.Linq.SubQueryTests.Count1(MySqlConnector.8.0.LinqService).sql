BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`p_1`.`ParentID`,
	`p_1`.`Sum_1`
FROM
	(
		SELECT
			(
				SELECT
					SUM(`a_Children`.`ParentID`)
				FROM
					`Child` `a_Children`
				WHERE
					`p`.`ParentID` = `a_Children`.`ParentID` AND `a_Children`.`ParentID` > 0
			) / 2 as `Sum_1`,
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `p_1`
WHERE
	`p_1`.`Sum_1` > 1

