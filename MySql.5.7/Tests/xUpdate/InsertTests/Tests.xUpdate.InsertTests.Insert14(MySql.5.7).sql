BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Person`
WHERE
	`Person`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	Concat('Insert14', (
		SELECT
			`p`.`FirstName`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = 1
	)),
	'Shepard',
	'M'
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Person`
WHERE
	`Person`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

