-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	NULLIF(`s`.`String`, 'abc')
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` = 'abc' OR `s`.`String` IS NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT (`s`.`String` = 'abc' OR `s`.`String` IS NULL)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	NULLIF(`s`.`String`, 'xyz')
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` = 'xyz' OR `s`.`String` IS NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT (`s`.`String` = 'xyz' OR `s`.`String` IS NULL)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`s`.`String`
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` IS NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` IS NOT NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	NULLIF(`s`.`NullableString`, 'abc')
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` = 'abc' OR `s`.`NullableString` IS NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT (`s`.`NullableString` = 'abc' OR `s`.`NullableString` IS NULL)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	NULLIF(`s`.`NullableString`, 'xyz')
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` = 'xyz' OR `s`.`NullableString` IS NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT (`s`.`NullableString` = 'xyz' OR `s`.`NullableString` IS NULL)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`s`.`NullableString`
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` IS NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` IS NOT NULL

