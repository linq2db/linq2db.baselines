BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CASE
		WHEN `t1`.`EnumNullable` IS NOT NULL THEN `t1`.`EnumNullable`
		ELSE `t1`.`Enum`
	END
FROM
	`ValueConversion` `t1`
UNION ALL
SELECT
	CASE
		WHEN `t1_1`.`EnumNullable` IS NOT NULL THEN `t1_1`.`EnumNullable`
		ELSE `t1_1`.`Enum`
	END
FROM
	`ValueConversion` `t1_1`

