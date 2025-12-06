-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`PK`,
	`t`.`ID`,
	`t`.`GV`
FROM
	`test_in_1` `t`
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			`test_in_2` `p`
		WHERE
			`t`.`ID` = `p`.`ID` OR `t`.`ID` IS NULL AND `p`.`ID` IS NULL
	)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`PK`,
	`t1`.`ID`,
	`t1`.`GV`
FROM
	`test_in_1` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`PK`,
	`t1`.`ID`,
	`t1`.`GV`
FROM
	`test_in_2` `t1`

