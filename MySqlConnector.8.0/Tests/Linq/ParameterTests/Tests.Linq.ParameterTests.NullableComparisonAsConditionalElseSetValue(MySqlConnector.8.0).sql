-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
UPDATE
	`SetFlagTable` `t1`
SET
	`t1`.`F` = CASE
		WHEN `t1`.`C` IS NULL THEN `t1`.`F`
		WHEN `t1`.`A` = `t1`.`B` OR `t1`.`A` IS NULL AND `t1`.`B` IS NULL
			THEN 1
		ELSE 0
	END

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`F`
FROM
	`SetFlagTable` `r`
ORDER BY
	`r`.`Id`

