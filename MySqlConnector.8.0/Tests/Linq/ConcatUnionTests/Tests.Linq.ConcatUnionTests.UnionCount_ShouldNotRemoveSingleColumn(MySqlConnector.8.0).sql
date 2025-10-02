BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`t1`.`PersonID`
		FROM
			`Person` `t1`
		UNION
		SELECT
			`t2`.`ParentID` as `PersonID`
		FROM
			`Parent` `t2`
	) `t3`

