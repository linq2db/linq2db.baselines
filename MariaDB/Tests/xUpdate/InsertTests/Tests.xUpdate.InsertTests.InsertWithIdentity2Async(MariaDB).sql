﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` > 4

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@Gender
)

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = 'John' AND `p`.`LastName` = 'Shepard'
LIMIT 2

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` > 4

