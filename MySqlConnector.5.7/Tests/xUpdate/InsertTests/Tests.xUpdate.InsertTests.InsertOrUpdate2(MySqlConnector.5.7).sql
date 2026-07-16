-- MySqlConnector.5.7 MySql.5.7.MySqlConnector
-- Batch 1
-- FirstName = test
-- LastName = subject
-- MiddleName = NULL
-- Gender = U
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 5

INSERT IGNORE INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	'negative'
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 5

SELECT
	`p`.`PersonID`,
	`p`.`Diagnosis`
FROM
	`Patient` `p`
WHERE
	`p`.`PersonID` = @id

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 5

INSERT IGNORE INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	'positive'
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 5

SELECT
	`p`.`PersonID`,
	`p`.`Diagnosis`
FROM
	`Patient` `p`
WHERE
	`p`.`PersonID` = @id

