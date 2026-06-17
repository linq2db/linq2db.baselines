-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`Id`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `e`.`Group` ORDER BY CASE
				WHEN `e`.`Priority` IS NULL THEN 1
				ELSE 0
			END, `e`.`Priority`, `e`.`Id`) as `RowNumber`,
			`e`.`Group` as `Group_1`,
			`e`.`Id`,
			`e`.`Priority`
		FROM
			`TestData` `e`
	) `x`
WHERE
	`x`.`RowNumber` = 1
ORDER BY
	CASE
		WHEN `x`.`Group_1` IS NULL THEN 1
		ELSE 0
	END,
	`x`.`Group_1`,
	CASE
		WHEN `x`.`Priority` IS NULL THEN 1
		ELSE 0
	END,
	`x`.`Priority`,
	`x`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`Id`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `e`.`Group` ORDER BY CASE
				WHEN `e`.`Priority` IS NULL THEN 1
				ELSE 0
			END, `e`.`Priority`, `e`.`Id`) as `RowNumber`,
			`e`.`Group` as `Group_1`,
			`e`.`Id`,
			`e`.`Priority`
		FROM
			`TestData` `e`
	) `x`
WHERE
	`x`.`RowNumber` = 1
ORDER BY
	CASE
		WHEN `x`.`Group_1` IS NULL THEN 1
		ELSE 0
	END,
	`x`.`Group_1`,
	CASE
		WHEN `x`.`Priority` IS NULL THEN 1
		ELSE 0
	END,
	`x`.`Priority`,
	`x`.`Id`

