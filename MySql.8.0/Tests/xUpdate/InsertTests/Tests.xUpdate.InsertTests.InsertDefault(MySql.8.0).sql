BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`Person`
WHERE
	`Person`.`FirstName` = 'InsertDefault'

