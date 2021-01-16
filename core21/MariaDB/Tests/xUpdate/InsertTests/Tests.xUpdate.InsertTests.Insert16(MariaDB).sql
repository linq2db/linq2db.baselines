BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `_`
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- MariaDB MySql.Official MySql
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
	Cast((Char_Length(@name) + @idx) as CHAR(11)),
	'M'
)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `_`
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'Insert16%' ESCAPE '~'

