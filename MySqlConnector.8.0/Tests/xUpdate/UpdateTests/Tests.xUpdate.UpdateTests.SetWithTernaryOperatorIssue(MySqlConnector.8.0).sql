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
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)
;
SELECT
	LAST_INSERT_ID() as `c1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @nullableGender String(1) -- StringFixedLength
SET     @nullableGender = 'O'

UPDATE
	`Person` `t1`
SET
	`t1`.`Gender` = @nullableGender
WHERE
	`t1`.`FirstName` LIKE 'UpdateComplex%' ESCAPE '~'

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

