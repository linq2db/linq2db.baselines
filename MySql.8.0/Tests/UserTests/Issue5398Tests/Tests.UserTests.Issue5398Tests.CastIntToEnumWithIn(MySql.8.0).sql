-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`i`.`Id`
FROM
	`TestEnumTable` `i`
WHERE
	`i`.`Value` IN (1, 3)
ORDER BY
	`i`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestEnumTable` `t1`

