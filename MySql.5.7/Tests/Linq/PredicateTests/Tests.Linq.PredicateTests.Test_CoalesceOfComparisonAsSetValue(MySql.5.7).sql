-- MySql.5.7 MySql.5.7.MySql.Data MySql57
UPDATE
	`NullableFlagTable` `t1`
SET
	`t1`.`Flag` = CASE
		WHEN `t1`.`A` = `t1`.`B` OR `t1`.`A` IS NULL AND `t1`.`B` IS NULL
			THEN 1
		ELSE 0
	END

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Flag`
FROM
	`NullableFlagTable` `r`
ORDER BY
	`r`.`Id`

