-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`x`.`Id`,
	CAST('Q1' AS CHAR(255)),
	`x`.`Q1`
FROM
	`QuarterlySales` `x`
WHERE
	`x`.`Q1` IS NOT NULL
UNION ALL
SELECT
	`x_1`.`Id`,
	CAST('Q2' AS CHAR(255)),
	`x_1`.`Q2`
FROM
	`QuarterlySales` `x_1`
WHERE
	`x_1`.`Q2` IS NOT NULL

