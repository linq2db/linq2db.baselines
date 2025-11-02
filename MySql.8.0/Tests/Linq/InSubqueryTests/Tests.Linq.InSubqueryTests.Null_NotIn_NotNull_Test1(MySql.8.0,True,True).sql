-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`ID`
FROM
	`test_in_1` `t`
WHERE
	`t`.`ID` IS NULL OR NOT EXISTS(
		SELECT
			*
		FROM
			`test_in_2` `p`
		WHERE
			`t`.`ID` = `p`.`ID`
	)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ID`
FROM
	`test_in_1` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ID`
FROM
	`test_in_2` `t1`

