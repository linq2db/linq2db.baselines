-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`i`.`Id`
FROM
	`BatchItem` `i`
WHERE
	`i`.`Id` > 100
LIMIT 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`GroupId`,
	`t1`.`Name`
FROM
	`BatchItem` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	(
		SELECT
			`i`.`Id`
		FROM
			`BatchItem` `i`
		WHERE
			`i`.`Id` > 100
		LIMIT 1
	) as `Item1`

