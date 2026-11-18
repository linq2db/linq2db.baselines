-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
UPDATE
	`TestBool` `t1`
SET
	`t1`.`Value` = CASE
		WHEN `t1`.`Value` = 0 OR `t1`.`Value` IS NULL THEN 1
		ELSE 0
	END

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Value`
FROM
	`TestBool` `r`
ORDER BY
	`r`.`Id`

