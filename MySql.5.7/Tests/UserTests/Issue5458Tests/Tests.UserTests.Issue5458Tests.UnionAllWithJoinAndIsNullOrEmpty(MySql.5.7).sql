-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value_1`,
	CASE
		WHEN NOT (`t1`.`Value_1` IS NULL OR CHAR_LENGTH(`t1`.`Value_1`) = 0)
			THEN `t1`.`Value_1`
		ELSE 'default'
	END
FROM
	(
		SELECT
			`t`.`Id`,
			`t`.`Value` as `Value_1`
		FROM
			`StringTable` `t`
		WHERE
			`t`.`Id` <= 1
		UNION ALL
		SELECT
			`t_1`.`Id`,
			`t_1`.`Value` as `Value_1`
		FROM
			`StringTable` `t_1`
		WHERE
			`t_1`.`Id` > 1
	) `t1`
		INNER JOIN `OtherTable` `o` ON `t1`.`Id` = `o`.`Id`
ORDER BY
	`t1`.`Id`

