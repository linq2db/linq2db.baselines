-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CASE
		WHEN `c_1`.`Kind` = 'C1' THEN `c_1`.`Kind`
		ELSE NULL
	END
FROM
	`SourceSchemaShape` `c_1`
ORDER BY
	`c_1`.`Id`

