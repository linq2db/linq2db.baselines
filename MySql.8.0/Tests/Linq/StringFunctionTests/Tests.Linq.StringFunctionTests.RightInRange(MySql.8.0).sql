-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`,
	RIGHT(`r`.`S`, `r`.`N`)
FROM
	`RightValues` `r`
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`S`,
	`t1`.`N`
FROM
	`RightValues` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`,
	`r`.`S`,
	`r`.`N`
FROM
	`RightValues` `r`
WHERE
	RIGHT(`r`.`S`, `r`.`N`) = 'ohn'

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`S`,
	`t1`.`N`
FROM
	`RightValues` `t1`

