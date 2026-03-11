-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN `t`.`EnumValue` = 'F' THEN 'First'
		WHEN `t`.`EnumValue` = 'S' THEN 'Second'
		WHEN `t`.`EnumValue` = 'T' THEN 'Third'
		ELSE `t`.`EnumValue`
	END
FROM
	`MapValueTable` `t`
LIMIT 1

