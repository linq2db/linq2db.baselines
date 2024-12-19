﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 5
DECLARE @diagnosis VarChar(3) -- String
SET     @diagnosis = 'abc'
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
	CAST(Char_Length(@diagnosis) + @i AS CHAR(11))
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = CAST(Char_Length(`Diagnosis`) + @i AS CHAR(255))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 5
DECLARE @diagnosis VarChar(3) -- String
SET     @diagnosis = 'abc'
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
	CAST(Char_Length(@diagnosis) + @i AS CHAR(11))
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = CAST(Char_Length(`Diagnosis`) + @i AS CHAR(255))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 5
DECLARE @diagnosis VarChar(3) -- String
SET     @diagnosis = 'abc'
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
	CAST(Char_Length(@diagnosis) + @i AS CHAR(11))
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = CAST(Char_Length(`Diagnosis`) + @i AS CHAR(255))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

