-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`g_1`.`Category`,
	SUM(CASE
		WHEN `g_1`.`Year` = 2000 THEN `g_1`.`Amount`
		ELSE NULL
	END),
	SUM(CASE
		WHEN `g_1`.`Year` = 2010 THEN `g_1`.`Amount`
		ELSE NULL
	END)
FROM
	`CategorySales` `g_1`
GROUP BY
	`g_1`.`Category`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p NewDecimal(12, 10) -- Decimal
SET     @p = 20.0000000000

SELECT
	`x`.`Id`
FROM
	`CategorySales` `x`
WHERE
	`x`.`Amount` = @p

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Cells NewDecimal(12, 10) -- Decimal
SET     @Cells = 20.0000000000

SELECT
	`x`.`Id`
FROM
	`CategorySales` `x`
WHERE
	`x`.`Amount` = @Cells

