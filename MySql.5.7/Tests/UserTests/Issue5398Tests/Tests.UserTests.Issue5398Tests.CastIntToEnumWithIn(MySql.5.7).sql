-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`i`.`Id`
FROM
	`TestEnumTable` `i`
WHERE
	`i`.`Value` IN (1, 3)
ORDER BY
	`i`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestEnumTable` `t1`

