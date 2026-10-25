-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
WITH `CTE_1` (`ParentID`)
AS
(
	SELECT
		`c_1`.`ParentID`
	FROM
		`Child` `c_1`
	WHERE
		`c_1`.`ParentID` >= 2
),
`CTE_2` (`ParentID`)
AS
(
	SELECT
		`c_2`.`ParentID`
	FROM
		`Child` `c_2`
	WHERE
		`c_2`.`ParentID` >= 4
)
SELECT
	COUNT(*)
FROM
	(
		SELECT
			`t1`.`ParentID`
		FROM
			`CTE_1` `t1`
		UNION ALL
		SELECT
			`t2`.`ParentID`
		FROM
			`CTE_2` `t2`
	) `t3`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
WITH `CTE_1` (`ParentID`)
AS
(
	SELECT
		`c_1`.`ParentID`
	FROM
		`Child` `c_1`
	WHERE
		`c_1`.`ParentID` >= 2
)
SELECT
	COUNT(*)
FROM
	(
		SELECT
			`t1`.`ParentID`
		FROM
			`CTE_1` `t1`
		UNION ALL
		SELECT
			`t2`.`ParentID`
		FROM
			`CTE_1` `t2`
	) `t3`

