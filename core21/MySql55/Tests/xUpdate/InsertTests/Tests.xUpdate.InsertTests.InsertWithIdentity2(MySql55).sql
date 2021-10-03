BeforeExecute
-- MySql55 MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

BeforeExecute
-- MySql55 MySql

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

BeforeExecute
-- MySql55 MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql55 MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = 'John' AND `p`.`LastName` = 'Shepard'
LIMIT @take

BeforeExecute
-- MySql55 MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

