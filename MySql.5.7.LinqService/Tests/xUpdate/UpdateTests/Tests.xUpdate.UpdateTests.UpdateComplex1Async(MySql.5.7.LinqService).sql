BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Gender String(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarChar(5) -- String
SET     @Name_LastName = 'Empty'

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
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT LAST_INSERT_ID()

