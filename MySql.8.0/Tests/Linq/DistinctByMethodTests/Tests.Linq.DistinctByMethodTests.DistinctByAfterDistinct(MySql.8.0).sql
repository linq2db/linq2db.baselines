-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Country`,
	`t1`.`Region`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `e_1`.`Country` ORDER BY `e_1`.`Region`) as `RowNumber`,
			`e_1`.`Region`,
			`e_1`.`Country`
		FROM
			(
				SELECT DISTINCT
					`e`.`Country`,
					`e`.`Region`
				FROM
					`NullableKeyData` `e`
				WHERE
					`e`.`CustomerId` LIKE 'DST%' ESCAPE '~'
			) `e_1`
	) `t1`
WHERE
	`t1`.`RowNumber` = 1
ORDER BY
	`t1`.`Region`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`CustomerId`,
	`t1`.`Country`,
	`t1`.`Region`
FROM
	`NullableKeyData` `t1`

