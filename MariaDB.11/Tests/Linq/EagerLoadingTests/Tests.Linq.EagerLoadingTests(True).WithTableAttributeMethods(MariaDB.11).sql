-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 10

INSERT INTO `LoadAsTableUser`
(
	`Id`
)
VALUES
(
	@Id
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @UserId Int32
SET     @UserId = 10
DECLARE @Age Int32
SET     @Age = 18

INSERT INTO `LoadAsTableUserDetails`
(
	`UserId`,
	`Age`
)
VALUES
(
	@UserId,
	@Age
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			`LoadAsTableUser` `t1`
	) > 0

