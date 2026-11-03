-- MySql.5.7 MySql.5.7.MySql.Data MySql57
UPDATE
	`TestBool` `t1`
SET
	`t1`.`Value` = CASE
		WHEN `t1`.`Value` = 0 OR `t1`.`Value` IS NULL THEN 1
		ELSE 0
	END

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Value`
FROM
	`TestBool` `r`
ORDER BY
	`r`.`Id`

