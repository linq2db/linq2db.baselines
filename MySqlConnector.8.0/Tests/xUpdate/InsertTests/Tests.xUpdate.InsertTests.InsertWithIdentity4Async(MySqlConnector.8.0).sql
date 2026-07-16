-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector
-- Batch 1
-- FirstName = John0
-- LastName = Shepard
-- MiddleName = NULL
-- Gender = M
INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`MiddleName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p VarChar(5) -- String
SET     @p = 'John0'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = @p AND `p`.`LastName` = 'Shepard'
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector
-- Batch 1
-- FirstName = John1
-- LastName = Shepard
-- MiddleName = NULL
-- Gender = M
INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`MiddleName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p VarChar(5) -- String
SET     @p = 'John1'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = @p AND `p`.`LastName` = 'Shepard'
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

