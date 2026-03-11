-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO `xxPerson`
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO `xxPerson`
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT LAST_INSERT_ID()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO `xxPerson`
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT LAST_INSERT_ID()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`xxPerson` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`xxPerson` `p`
WHERE
	`p`.`FirstName` = 'Steven' AND `p`.`LastName` = 'King' AND
	`p`.`Gender` = 'M'

