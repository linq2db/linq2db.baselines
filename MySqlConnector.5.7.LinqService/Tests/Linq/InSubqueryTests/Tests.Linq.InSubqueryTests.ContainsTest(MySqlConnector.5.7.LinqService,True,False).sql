BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `c_1`
		WHERE
			1 = `c_1`.`ParentID`
	) as `c1`

