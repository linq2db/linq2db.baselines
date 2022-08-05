﻿BeforeExecute
-- MySqlConnector MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MySqlConnector MySql

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'UpdateComplex%' ESCAPE '~'

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySqlConnector MySql

UPDATE
	`Person` `_`
SET
	`_`.`LastName` = `_`.`FirstName`
WHERE
	`_`.`FirstName` LIKE 'UpdateComplex%' ESCAPE '~'

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`FirstName` LIKE 'UpdateComplex%' ESCAPE '~'

