BeforeExecute
-- MySqlConnector MySql
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarChar(10) -- String
SET     @LastName = 'Limonadovy'
DECLARE @Gender String(1) -- StringFixedLength
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
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `c_1`
WHERE
	`c_1`.`LastName` = 'Limonadovy'

BeforeExecute
-- MySqlConnector MySql
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Johnny'

UPDATE
	`Person` `c_1`
SET
	`c_1`.`FirstName` = @FirstName
WHERE
	`c_1`.`LastName` = 'Limonadovy'

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `c_1`
WHERE
	`c_1`.`FirstName` = 'Johnny' AND `c_1`.`LastName` = 'Limonadovy'

