-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`Int` <=> @value

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableInt` <=> @value

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` <=> @value

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` <=> @value

