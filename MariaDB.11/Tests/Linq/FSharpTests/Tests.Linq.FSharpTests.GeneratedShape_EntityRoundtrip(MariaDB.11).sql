-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @MiddleName VarChar(1) -- String
SET     @MiddleName = 'Q'
DECLARE @Age Int32
SET     @Age = 42

INSERT INTO `GeneratedScaffoldPerson`
(
	`PersonID`,
	`FirstName`,
	`MiddleName`,
	`Age`
)
VALUES
(
	@Id,
	@FirstName,
	@MiddleName,
	@Age
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 2
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'Jane'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Age Int32
SET     @Age = NULL

INSERT INTO `GeneratedScaffoldPerson`
(
	`PersonID`,
	`FirstName`,
	`MiddleName`,
	`Age`
)
VALUES
(
	@Id,
	@FirstName,
	@MiddleName,
	@Age
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`MiddleName`,
	`p`.`Age`
FROM
	`GeneratedScaffoldPerson` `p`
WHERE
	`p`.`PersonID` = 1
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`MiddleName`,
	`p`.`Age`
FROM
	`GeneratedScaffoldPerson` `p`
WHERE
	`p`.`PersonID` = 2
LIMIT 2

