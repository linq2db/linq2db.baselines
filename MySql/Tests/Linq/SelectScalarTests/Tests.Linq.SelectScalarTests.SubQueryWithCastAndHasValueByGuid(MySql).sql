BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`_`.`ParentID`,
	`_`.`Value1`
FROM
	`Parent` `_`
		LEFT JOIN (
			SELECT
				CASE
					WHEN `r`.`GuidValue` IS NOT NULL THEN 1
					ELSE 0
				END as `HasValue`
			FROM
				`LinqDataTypes` `r`
			LIMIT 1
		) `t1` ON 1=1
WHERE
	`t1`.`HasValue` = 1

