BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Person`
(
	`FirstName`,
	`MiddleName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'InsertDefault',
	DEFAULT,
	'InsertDefault',
	'M'
)

BeforeExecute
-- MySql MySql.Official MySql

DELETE   `p`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = 'InsertDefault'

