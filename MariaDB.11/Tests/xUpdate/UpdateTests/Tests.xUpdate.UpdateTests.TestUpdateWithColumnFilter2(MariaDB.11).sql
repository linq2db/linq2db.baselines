BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'UpdateColumnFilter'
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
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'UpdateColumnFilter'

SELECT
	`x`.`FirstName`,
	`x`.`PersonID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` = @FirstName
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	`Person` `t1`
SET
	`t1`.`FirstName` = @FirstName
WHERE
	`t1`.`PersonID` = @ID

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @ID Int32
SET     @ID = 5

SELECT
	`x`.`FirstName`,
	`x`.`PersonID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`
FROM
	`Person` `x`
WHERE
	`x`.`PersonID` = @ID
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName VarChar(25) -- String
SET     @LastName = 'UpdateColumnFilterUpdated'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	`Person` `t1`
SET
	`t1`.`FirstName` = @FirstName,
	`t1`.`LastName` = @LastName,
	`t1`.`MiddleName` = @MiddleName,
	`t1`.`Gender` = @Gender
WHERE
	`t1`.`PersonID` = @ID

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @ID Int32
SET     @ID = 5

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @ID
LIMIT 2

