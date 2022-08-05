﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Max(`t`.`PersonID`)
FROM
	`Person` `t`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Gender String(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarChar(2) -- String
SET     @Name_LastName = 'ln'

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
-- MySql55 MySql.Official MySql
DECLARE @id Int32
SET     @id = 4
DECLARE @take Int32
SET     @take = 2

SELECT
	`p2`.`PersonID`,
	`p2`.`Gender`,
	`p2`.`FirstName`,
	`p2`.`MiddleName`,
	`p2`.`LastName`
FROM
	`Person` `p2`
WHERE
	`p2`.`PersonID` > @id
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @id Int32
SET     @id = 4

DELETE   `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > @id

