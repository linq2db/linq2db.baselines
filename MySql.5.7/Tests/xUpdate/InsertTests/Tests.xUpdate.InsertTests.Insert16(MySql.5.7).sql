BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Count(*)
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'Insert16%' ESCAPE '~'

