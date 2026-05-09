-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Concat(`t`.`Value1`, Coalesce(CAST(`t`.`Value2` AS CHAR(11)), ''), Coalesce(Lower(CAST(`t`.`Value3` AS CHAR(36))), ''))
FROM
	`StringConcatIntGuidNullEntity` `t`
ORDER BY
	`t`.`ID`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value3`
FROM
	`StringConcatIntGuidNullEntity` `t1`

