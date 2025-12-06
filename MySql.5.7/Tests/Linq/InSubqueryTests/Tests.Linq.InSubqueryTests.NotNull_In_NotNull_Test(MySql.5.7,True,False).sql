-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`PK`,
	`t`.`ID`
FROM
	`test_in_1` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`test_in_2` `p`
		WHERE
			`t`.`ID` = `p`.`ID`
	)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`PK`,
	`t1`.`ID`
FROM
	`test_in_1` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`PK`,
	`t1`.`ID`
FROM
	`test_in_2` `t1`

