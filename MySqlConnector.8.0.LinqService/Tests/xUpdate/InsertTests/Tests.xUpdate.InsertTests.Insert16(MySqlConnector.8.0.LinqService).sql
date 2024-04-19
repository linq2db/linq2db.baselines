BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @name VarChar(8) -- String
SET     @name = 'Insert16'
DECLARE @idx Int32
SET     @idx = 4

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'Insert16',
	CAST(Char_Length(@name) + @idx AS CHAR(11)),
	'M'
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Count(*)
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'Insert16%' ESCAPE '~'

