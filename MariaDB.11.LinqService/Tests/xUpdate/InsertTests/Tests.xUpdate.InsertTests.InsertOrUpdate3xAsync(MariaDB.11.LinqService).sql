BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
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

SELECT LAST_INSERT_ID()

