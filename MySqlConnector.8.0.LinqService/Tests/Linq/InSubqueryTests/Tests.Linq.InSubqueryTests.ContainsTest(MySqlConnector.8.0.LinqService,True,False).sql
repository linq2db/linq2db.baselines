BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `c_1`
		WHERE
			1 = `c_1`.`ParentID`
	) as `c1`

