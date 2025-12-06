-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Int` IN (-1, -2)
LIMIT 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Int` IN (-1, NULL)
LIMIT 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Int` IN (-1, 2)
LIMIT 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Int` NOT IN (NULL, 2)
LIMIT 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Int` NOT IN (-1, 2)
LIMIT 1

