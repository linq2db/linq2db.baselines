BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`t`.`PK`,
	`t`.`ID`
FROM
	`test_in_1` `t`
WHERE
	`t`.`ID` NOT IN (
		SELECT
			`p`.`ID`
		FROM
			`test_in_2` `p`
	)
ORDER BY
	`t`.`PK`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`t1`.`PK`,
	`t1`.`ID`
FROM
	`test_in_1` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`t1`.`PK`,
	`t1`.`ID`
FROM
	`test_in_2` `t1`

