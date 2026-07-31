-- MySqlConnector.5.7 MySql.5.7.MySqlConnector
-- Batch 1
-- Gender = M
-- FirstName = a
-- MiddleName = A
-- LastName = b
INSERT INTO `Person`
(
	`Gender`,
	`FirstName`,
	`MiddleName`,
	`LastName`
)
VALUES
(
	@Gender,
	@FirstName,
	@MiddleName,
	@LastName
)

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector
-- Batch 1
-- Gender = M
-- FirstName = c
-- MiddleName = NULL
-- LastName = d
INSERT INTO `Person`
(
	`Gender`,
	`FirstName`,
	`MiddleName`,
	`LastName`
)
VALUES
(
	@Gender,
	@FirstName,
	@MiddleName,
	@LastName
)

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id1 Int32
SET     @id1 = 5

SELECT
	`t1`.`PersonID`,
	`t1`.`Gender`,
	`t1`.`FirstName`,
	`t1`.`MiddleName`,
	`t1`.`LastName`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @id1
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id2 Int32
SET     @id2 = 6

SELECT
	`t1`.`PersonID`,
	`t1`.`Gender`,
	`t1`.`FirstName`,
	`t1`.`MiddleName`,
	`t1`.`LastName`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @id2
LIMIT 1

