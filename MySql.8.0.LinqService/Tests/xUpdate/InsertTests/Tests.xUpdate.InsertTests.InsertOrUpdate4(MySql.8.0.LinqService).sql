BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 5
DECLARE @diagnosis Int32
SET     @diagnosis = 3
DECLARE @i Int32
SET     @i = 0

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	CAST(@diagnosis + @i AS CHAR(11))
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = CAST(CHAR_LENGTH(`Diagnosis`) + @i AS CHAR(11))

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 5
DECLARE @diagnosis Int32
SET     @diagnosis = 3
DECLARE @i Int32
SET     @i = 1

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	CAST(@diagnosis + @i AS CHAR(11))
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = CAST(CHAR_LENGTH(`Diagnosis`) + @i AS CHAR(11))

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 5
DECLARE @diagnosis Int32
SET     @diagnosis = 3
DECLARE @i Int32
SET     @i = 2

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	CAST(@diagnosis + @i AS CHAR(11))
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = CAST(CHAR_LENGTH(`Diagnosis`) + @i AS CHAR(11))

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 5

SELECT
	`p`.`PersonID`,
	`p`.`Diagnosis`
FROM
	`Patient` `p`
WHERE
	`p`.`PersonID` = @id
LIMIT 2

