-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	CASE
		WHEN `r`.`C` IS NULL THEN CASE
			WHEN `r`.`A` = `r`.`B` OR `r`.`A` IS NULL AND `r`.`B` IS NULL
				THEN 1
			ELSE 0
		END
		ELSE `r`.`Flag`
	END
FROM
	`NullableFlagTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`A`,
	`t1`.`B`,
	`t1`.`C`,
	`t1`.`Flag`
FROM
	`NullableFlagTable` `t1`

