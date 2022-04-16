BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

BeforeExecute
-- MySql55Connector MySqlConnector MySql
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
-- MySql55Connector MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

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
LIMIT @take

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

