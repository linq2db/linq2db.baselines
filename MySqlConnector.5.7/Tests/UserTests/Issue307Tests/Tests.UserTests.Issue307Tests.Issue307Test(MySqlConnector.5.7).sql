-- MySqlConnector.5.7 MySql.5.7.MySqlConnector
-- Batch 1
-- Gender = M
-- FirstName = FirstName307
-- MiddleName = NULL
-- LastName = LastName307
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
DECLARE @id Int32
SET     @id = 5

SELECT
	`t1`.`PersonID`,
	`t1`.`Gender`,
	`t1`.`FirstName`,
	`t1`.`MiddleName`,
	`t1`.`LastName`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @id
LIMIT 1

