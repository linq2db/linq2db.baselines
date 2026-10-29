-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
UPDATE
	`TestBool` `t1`
SET
	`t1`.`Value` = CASE
		WHEN `t1`.`Id` > 0 THEN `t1`.`Value` = 0 OR `t1`.`Value` IS NULL
		ELSE NULL
	END

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Value`
FROM
	`TestBool` `r`
ORDER BY
	`r`.`Id`

