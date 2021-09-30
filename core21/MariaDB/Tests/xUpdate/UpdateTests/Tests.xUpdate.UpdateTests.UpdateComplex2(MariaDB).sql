﻿BeforeExecute
-- MariaDB MySqlConnector MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE `_`
FROM
	`Person` `_`
WHERE
	LOCATE('UpdateComplex', `_`.`FirstName`) = 1

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Gender String(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarChar(5) -- String
SET     @Name_LastName = 'Empty'

INSERT INTO `Person`
(
	`Gender`,
	`FirstName`,
	`MiddleName`,
	`LastName`
)
VALUES
(
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySqlConnector MySql

UPDATE
	`Person` `_`
SET
	`_`.`LastName` = `_`.`FirstName`
WHERE
	LOCATE('UpdateComplex', `_`.`FirstName`) = 1

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @id Int32
SET     @id = 5
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`PersonID`,
	`_`.`Gender`,
	`_`.`FirstName`,
	`_`.`MiddleName`,
	`_`.`LastName`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = @id
LIMIT @take

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE `_`
FROM
	`Person` `_`
WHERE
	LOCATE('UpdateComplex', `_`.`FirstName`) = 1

