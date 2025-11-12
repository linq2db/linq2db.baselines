-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	NULLIF(`s`.`Int`, 2)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` = 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` <> 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	NULLIF(`s`.`Int`, 4)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` = 4

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` <> 4

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`s`.`Int`
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	1 = 0

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Src` `s`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	NULLIF(`s`.`NullableInt`, 2)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` = 2 OR `s`.`NullableInt` IS NULL

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT (`s`.`NullableInt` = 2 OR `s`.`NullableInt` IS NULL)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	NULLIF(`s`.`NullableInt`, 4)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` = 4 OR `s`.`NullableInt` IS NULL

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT (`s`.`NullableInt` = 4 OR `s`.`NullableInt` IS NULL)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`s`.`NullableInt`
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` IS NULL

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` IS NOT NULL

