-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	RIGHT(`r`.`S`, `r`.`N`)
FROM
	`RightValues` `r`
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`S`,
	`t1`.`N`
FROM
	`RightValues` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`S`,
	`r`.`N`
FROM
	`RightValues` `r`
WHERE
	RIGHT(`r`.`S`, `r`.`N`) = 'ohn'

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`S`,
	`t1`.`N`
FROM
	`RightValues` `t1`

