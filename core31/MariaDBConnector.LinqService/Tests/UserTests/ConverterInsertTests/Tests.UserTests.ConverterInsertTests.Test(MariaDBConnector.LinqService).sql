﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @FirstName VarChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName VarChar(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender VarChar(1) -- String
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
-- MariaDBConnector MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @id Int32
SET     @id = 5
DECLARE @take Int32
SET     @take = 1

SELECT
	`t`.`PersonID`,
	`t`.`FirstName`,
	`t`.`LastName`,
	`t`.`MiddleName`,
	`t`.`Gender`
FROM
	`Person` `t`
WHERE
	`t`.`PersonID` = @id
LIMIT @take

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @id Int32
SET     @id = 5
DECLARE @take Int32
SET     @take = 1

SELECT
	`t`.`PersonID`,
	`t`.`FirstName`,
	`t`.`LastName`,
	`t`.`MiddleName`,
	`t`.`Gender`
FROM
	`Person` `t`
WHERE
	`t`.`PersonID` = @id
LIMIT @take

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @PersonID Int32
SET     @PersonID = 5
DECLARE @FirstName VarChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName VarChar(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender VarChar(1) -- String
SET     @Gender = 'M'

DELETE   `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @PersonID AND
	`t1`.`FirstName` = @FirstName AND
	`t1`.`LastName` = @LastName AND
	`t1`.`MiddleName` = @MiddleName AND
	`t1`.`Gender` = @Gender

