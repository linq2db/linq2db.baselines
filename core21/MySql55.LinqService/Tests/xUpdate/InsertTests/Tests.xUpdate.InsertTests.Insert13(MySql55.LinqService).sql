BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	Max(`t`.`PersonID`)
FROM
	`Person` `t`

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'FirstName',
	'LastName',
	'M'
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

