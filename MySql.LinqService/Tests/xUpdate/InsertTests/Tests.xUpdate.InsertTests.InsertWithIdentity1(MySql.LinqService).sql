BeforeExecute
-- MySql MySql.Official MySql

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` > 4

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql MySql.Official MySql

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
LIMIT 2

BeforeExecute
-- MySql MySql.Official MySql

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` > 4

