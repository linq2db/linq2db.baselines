BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE   `p`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = 'InsertDefault'

