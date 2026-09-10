-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @FirstName VarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @Gender String(1) -- StringFixedLength
SET     @Gender = 'F'

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	@FirstName,
	'LastName',
	@Gender
)

