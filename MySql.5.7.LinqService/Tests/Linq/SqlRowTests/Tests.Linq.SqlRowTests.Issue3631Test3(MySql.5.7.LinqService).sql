BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`x`.`Id`,
	`x`.`Country`,
	`x`.`State`
FROM
	`Issue3631Table` `x`
WHERE
	(`x`.`Country`, `x`.`State`) IN (
		SELECT
			`t1`.`Item1`,
			`t1`.`Item2`
		FROM
			(
				SELECT 'US' AS `Item1`, 'CA' AS `Item2`
				UNION ALL
				SELECT 'US', 'NY') `t1`
	)

