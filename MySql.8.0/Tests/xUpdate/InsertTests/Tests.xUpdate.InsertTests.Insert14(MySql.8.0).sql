-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`Person`
WHERE
	`Person`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`Person`
WHERE
	`Person`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

