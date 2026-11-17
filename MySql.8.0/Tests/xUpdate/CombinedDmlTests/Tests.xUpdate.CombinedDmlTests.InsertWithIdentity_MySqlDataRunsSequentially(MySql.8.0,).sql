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

-- MySql.8.0.MySql.Data MySql80
SELECT
	LAST_INSERT_ID() as `c1`

-- MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = 8

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @p
LIMIT 2

-- MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

