BeforeExecute
-- MySqlConnector MySql

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

