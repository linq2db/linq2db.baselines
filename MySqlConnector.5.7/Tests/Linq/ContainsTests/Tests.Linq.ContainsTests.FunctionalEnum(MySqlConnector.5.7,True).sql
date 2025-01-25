BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` IN ('THREE', 'FOUR')
LIMIT 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`Enum` IN ('THREE') OR `s`.`Enum` IS NULL)
LIMIT 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`Enum` NOT IN ('TWO') AND `s`.`Enum` IS NOT NULL)
LIMIT 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`Enum` NOT IN ('THREE', 'TWO') OR `s`.`Enum` IS NULL)
LIMIT 1

