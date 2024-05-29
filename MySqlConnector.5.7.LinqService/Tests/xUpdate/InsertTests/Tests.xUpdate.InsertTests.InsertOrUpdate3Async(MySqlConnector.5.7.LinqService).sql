BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT LAST_INSERT_ID()

