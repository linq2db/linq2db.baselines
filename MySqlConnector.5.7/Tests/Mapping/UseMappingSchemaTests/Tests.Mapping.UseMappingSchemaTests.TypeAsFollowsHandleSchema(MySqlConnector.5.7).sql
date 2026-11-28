-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CASE
		WHEN `c_1`.`Kind` = 'C1' THEN `c_1`.`Kind`
		ELSE NULL
	END
FROM
	`SourceSchemaShape` `c_1`
ORDER BY
	`c_1`.`Id`

