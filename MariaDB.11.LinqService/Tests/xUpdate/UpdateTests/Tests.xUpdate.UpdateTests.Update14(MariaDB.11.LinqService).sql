﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql
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
--  MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @name VarChar(8) -- String
SET     @name = 'Update14'
DECLARE @idx Int32
SET     @idx = 4

UPDATE
	`Person` `t1`
SET
	`t1`.`LastName` = CAST(Char_Length(@name) + @idx AS CHAR(11))
WHERE
	`t1`.`FirstName` LIKE 'Update14%' ESCAPE '~'

BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Person` `t1`
WHERE
	`t1`.`FirstName` LIKE 'Update14%' ESCAPE '~'

