-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `p`
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					`Child` `c_1`
				WHERE
					`p`.`ParentID` = `c_1`.`ParentID` AND `c_1`.`ParentID` > 1
			)
	) as `c1`

