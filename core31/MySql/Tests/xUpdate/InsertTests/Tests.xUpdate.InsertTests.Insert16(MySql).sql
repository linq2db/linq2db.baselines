BeforeExecute
-- MySql MySql.Official MySql

DELETE `_`
FROM
	`Person` `_`
WHERE
	LOCATE('Insert16', `_`.`FirstName`) = 1

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `_`
WHERE
	LOCATE('Insert16', `_`.`FirstName`) = 1

BeforeExecute
-- MySql MySql.Official MySql

DELETE `_`
FROM
	`Person` `_`
WHERE
	LOCATE('Insert16', `_`.`FirstName`) = 1

