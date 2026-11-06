-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			`c_1`.`ChildID`
		FROM
			`Child` `c_1`
	) `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			`x`.`ChildID`
		FROM
			`Child` `x`
		WHERE
			`x`.`ChildID` > 20
	) `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	MAX(`t1`.`ChildID`)
FROM
	(
		SELECT DISTINCT
			`c_1`.`ChildID`
		FROM
			`Child` `c_1`
	) `t1`

