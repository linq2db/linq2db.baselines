-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	NULLIF(`s`.`Int`, 2)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	`x`.`Int` = 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	`x`.`Int` <> 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	NULLIF(`s`.`Int`, 4)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	`x`.`Int` = 4

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	`x`.`Int` <> 4

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`s`.`Int`
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	1 = 0

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `x`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	NULLIF(`s`.`NullableInt`, 2)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	`x`.`NullableInt` = 2 OR `x`.`NullableInt` IS NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	NOT (`x`.`NullableInt` = 2 OR `x`.`NullableInt` IS NULL)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	NULLIF(`s`.`NullableInt`, 4)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	`x`.`NullableInt` = 4 OR `x`.`NullableInt` IS NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	NOT (`x`.`NullableInt` = 4 OR `x`.`NullableInt` IS NULL)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`s`.`NullableInt`
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	`x`.`NullableInt` IS NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	`x`.`NullableInt` IS NOT NULL

