﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Int32
SET     @id = 5
DECLARE @diagnosis VarChar(3) -- String
SET     @diagnosis = 'abc'

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	Cast(Char_Length(@diagnosis) as CHAR(11))
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = Cast(Char_Length(`Diagnosis`) as CHAR(11))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
	Cast((Char_Length(@diagnosis) + @i) as CHAR(11))
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = Cast((Char_Length(`Diagnosis`) + @i) as CHAR(11))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
	Cast((Char_Length(@diagnosis) + @i) as CHAR(11))
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = Cast((Char_Length(`Diagnosis`) + @i) as CHAR(11))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Int32
SET     @id = 5
DECLARE @take Int32
SET     @take = 2

SELECT
	`p`.`PersonID`,
	`p`.`Diagnosis`
FROM
	`Patient` `p`
WHERE
	`p`.`PersonID` = @id
LIMIT @take

