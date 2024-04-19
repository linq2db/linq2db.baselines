BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`_`.`ParentID`,
	`_`.`Value1`
FROM
	`Parent` `_`
		LEFT JOIN (
			SELECT
				`r`.`GuidValue`
			FROM
				`LinqDataTypes` `r`
			LIMIT 1
		) `t1` ON 1=1
WHERE
	`t1`.`GuidValue` IS NOT NULL

