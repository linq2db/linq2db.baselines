﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @id Int32
SET     @id = 5

SELECT
	`t1`.`PersonID`,
	`t1`.`Gender`,
	`t1`.`FirstName`,
	`t1`.`MiddleName`,
	`t1`.`LastName`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @id
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @Gender String(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarChar(13) -- String
SET     @Name_LastName = 'UpdateComplex'
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	`Person` `t1`
SET
	`t1`.`Gender` = @Gender,
	`t1`.`FirstName` = @Name_FirstName,
	`t1`.`MiddleName` = @Name_MiddleName,
	`t1`.`LastName` = @Name_LastName
WHERE
	`t1`.`PersonID` = @ID

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @id Int32
SET     @id = 5

SELECT
	`t1`.`PersonID`,
	`t1`.`Gender`,
	`t1`.`FirstName`,
	`t1`.`MiddleName`,
	`t1`.`LastName`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @id
LIMIT 1

