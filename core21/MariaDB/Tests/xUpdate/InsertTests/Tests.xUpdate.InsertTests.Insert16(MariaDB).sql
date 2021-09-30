BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE `_`
FROM
	`Person` `_`
WHERE
	LOCATE('Insert16', `_`.`FirstName`) = 1

BeforeExecute
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `_`
WHERE
	LOCATE('Insert16', `_`.`FirstName`) = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE `_`
FROM
	`Person` `_`
WHERE
	LOCATE('Insert16', `_`.`FirstName`) = 1

