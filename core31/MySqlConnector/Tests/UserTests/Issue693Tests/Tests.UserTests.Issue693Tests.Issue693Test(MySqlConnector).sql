BeforeExecute
-- MySqlConnector MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

BeforeExecute
-- MySqlConnector MySql
DECLARE @Gender String(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName VarChar(1) -- String
SET     @FirstName = 'a'
DECLARE @MiddleName VarChar(1) -- String
SET     @MiddleName = 'A'
DECLARE @LastName VarChar(1) -- String
SET     @LastName = 'b'

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
	@FirstName,
	@MiddleName,
	@LastName
)

BeforeExecute
-- MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySqlConnector MySql
DECLARE @Gender String(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName VarChar(1) -- String
SET     @FirstName = 'c'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName VarChar(1) -- String
SET     @LastName = 'd'

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
	@FirstName,
	@MiddleName,
	@LastName
)

BeforeExecute
-- MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

