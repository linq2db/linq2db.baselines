-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`o`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`o`.`ParentID` = `a_Children`.`ParentID`
	),
	Coalesce((
		SELECT
			SUM(`a_Children_1`.`ParentID`)
		FROM
			`Child` `a_Children_1`
		WHERE
			`o`.`ParentID` = `a_Children_1`.`ParentID`
	), 0)
FROM
	`Parent` `o`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Parent` `o`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`ParentID`,
	`x`.`CountResult`,
	`x`.`SumResult`
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					`Child` `a_Children`
				WHERE
					`o`.`ParentID` = `a_Children`.`ParentID`
			) as `CountResult`,
			`o`.`ParentID`,
			Coalesce((
				SELECT
					SUM(`a_Children_1`.`ParentID`)
				FROM
					`Child` `a_Children_1`
				WHERE
					`o`.`ParentID` = `a_Children_1`.`ParentID`
			), 0) as `SumResult`
		FROM
			`Parent` `o`
	) `x`
WHERE
	`x`.`CountResult` > 0

