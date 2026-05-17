-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Taxonomy`
FROM
	(
		SELECT DISTINCT
			`s`.`PersonID` as `Key_1`
		FROM
			`Doctor` `s`
	) `s_2`
		INNER JOIN LATERAL (
			SELECT
				`s_1`.`Taxonomy`
			FROM
				`Doctor` `s_1`
			WHERE
				`s_2`.`Key_1` = `s_1`.`PersonID`
			LIMIT 1
		) `t1` ON 1=1

