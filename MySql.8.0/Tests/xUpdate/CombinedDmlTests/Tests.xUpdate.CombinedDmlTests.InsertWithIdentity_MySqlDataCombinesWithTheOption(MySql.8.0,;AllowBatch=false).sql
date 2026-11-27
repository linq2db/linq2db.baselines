-- MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

-- MySql.8.0.MySql.Data MySql80
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
;
SELECT
	LAST_INSERT_ID() as `c1`

-- MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

