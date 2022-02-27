BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Max(`t`.`PersonID`)
FROM
	`Person` `t`

BeforeExecute
-- MySql55 MySql.Official MySql
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

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @id Int32
SET     @id = 4

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > @id

