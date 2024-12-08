BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`p`.`ParentID` as `ID`
		FROM
			`Parent` `p`
		WHERE
			`p`.`ParentID` > 2
		UNION
		SELECT
			`p_1`.`ParentID` as `ID`
		FROM
			`Parent` `p_1`
		WHERE
			`p_1`.`ParentID` > 2
	) `t1`

