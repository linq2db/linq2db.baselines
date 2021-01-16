BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @FirstName VarChar(8) -- String
SET     @FirstName = 'Update14'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`MiddleName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @name VarChar(8) -- String
SET     @name = 'Update14'
DECLARE @idx Int32
SET     @idx = 4

UPDATE
	`Person` `_`
SET
	`_`.`LastName` = Cast((Char_Length(@name) + @idx) as CHAR(11))
WHERE
	`_`.`FirstName` LIKE 'Update14%' ESCAPE '~'

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `_`
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'Update14%' ESCAPE '~'

