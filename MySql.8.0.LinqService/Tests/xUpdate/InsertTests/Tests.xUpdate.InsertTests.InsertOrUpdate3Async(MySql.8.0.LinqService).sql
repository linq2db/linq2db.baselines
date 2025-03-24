BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
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
--  MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT LAST_INSERT_ID()

