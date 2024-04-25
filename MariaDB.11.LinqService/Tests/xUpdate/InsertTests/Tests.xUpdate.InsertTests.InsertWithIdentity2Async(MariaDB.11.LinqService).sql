BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE   `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE   `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

