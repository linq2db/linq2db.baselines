-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t2`.`ReferenceName`
FROM
	(
		SELECT
			`g_1`.`Id`
		FROM
			`TestTable` `g_1`
		GROUP BY
			`g_1`.`Id`
	) `g_2`
		INNER JOIN LATERAL (
			SELECT
				`a_Reference`.`Name` as `ReferenceName`
			FROM
				`TestTable` `t1`
					INNER JOIN `Reference` `a_Reference` ON `t1`.`ReferenceId` = `a_Reference`.`Id`
			WHERE
				`g_2`.`Id` = `t1`.`Id`
			LIMIT 1
		) `t2` ON 1=1

