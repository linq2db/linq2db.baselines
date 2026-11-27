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
	`t1`.`Id`,
	`a_Details`.`UserId`,
	`a_Details`.`Age`
FROM
	`LoadAsTableUser` `t1`
		LEFT JOIN `LoadAsTableUserDetails` `a_Details` ON `t1`.`Id` = `a_Details`.`UserId`

