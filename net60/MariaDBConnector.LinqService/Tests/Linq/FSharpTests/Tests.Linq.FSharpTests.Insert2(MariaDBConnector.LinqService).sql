﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	Max(`p`.`PersonID`)
FROM
	`Person` `p`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @Gender VarChar(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = ''
DECLARE @Name_LastName VarChar(2) -- String
SET     @Name_LastName = 'ln'

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
-- MariaDBConnector MySqlConnector MySql

SELECT
	`p`.`PersonID`,
	`p`.`Gender`,
	`p`.`FirstName`,
	`p`.`MiddleName`,
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` > 4
LIMIT 2

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DELETE   `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

