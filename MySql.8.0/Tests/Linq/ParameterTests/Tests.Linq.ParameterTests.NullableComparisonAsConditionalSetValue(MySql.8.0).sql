-- MySql.8.0 MySql.8.0.MySql.Data MySql80
UPDATE
	`TestBool` `t1`
SET
	`t1`.`Value` = CASE
		WHEN `t1`.`Id` > 0 THEN `t1`.`Value` = 0 OR `t1`.`Value` IS NULL
		ELSE NULL
	END

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Value`
FROM
	`TestBool` `r`
ORDER BY
	`r`.`Id`

