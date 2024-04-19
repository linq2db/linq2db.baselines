BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`_`.`ParentID`,
	`_`.`Value1`
FROM
	`Parent` `_`
		LEFT JOIN (
			SELECT
				`r`.`Value1`
			FROM
				`Parent` `r`
			LIMIT 1
		) `t1` ON 1=1
WHERE
	`t1`.`Value1` IS NOT NULL

