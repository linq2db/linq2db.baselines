BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				`Parent` `p`
			WHERE
				EXISTS(
					SELECT
						1
					FROM
						`Child` `c_1`
					WHERE
						`p`.`ParentID` = `c_1`.`ParentID` AND `c_1`.`ParentID` > 1
				)
		)
			THEN 1
		ELSE 0
	END as `c1`

