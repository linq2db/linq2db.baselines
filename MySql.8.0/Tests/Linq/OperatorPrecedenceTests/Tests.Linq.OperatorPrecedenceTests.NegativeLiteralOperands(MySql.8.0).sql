-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(`r`.`A` AS DECIMAL(29, 10)) * -5.5
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`A`,
	`t1`.`B`,
	`t1`.`C`,
	`t1`.`N`,
	`t1`.`S`
FROM
	`PrecedenceRow` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	-(-5.5) * `r`.`B`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`A`,
	`t1`.`B`,
	`t1`.`C`,
	`t1`.`N`,
	`t1`.`S`
FROM
	`PrecedenceRow` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(`r`.`A` AS DOUBLE) * -5.5
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`A`,
	`t1`.`B`,
	`t1`.`C`,
	`t1`.`N`,
	`t1`.`S`
FROM
	`PrecedenceRow` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(`r`.`A` AS DOUBLE) * 9.9999999999999995E-08
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`A`,
	`t1`.`B`,
	`t1`.`C`,
	`t1`.`N`,
	`t1`.`S`
FROM
	`PrecedenceRow` `t1`

