-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`
WHERE
	(
		SELECT
			`r`.`GuidValue`
		FROM
			`LinqDataTypes` `r`
		LIMIT 1
	) IS NOT NULL

