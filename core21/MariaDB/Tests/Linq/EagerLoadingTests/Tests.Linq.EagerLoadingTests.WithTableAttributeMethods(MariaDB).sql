﻿BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `UserIssue3128`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_UserIssue3128` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `UserDetailsIssue3128`
(
	`UserId` INT NOT NULL,
	`Age`    INT NOT NULL,

	CONSTRAINT `PK_UserDetailsIssue3128` PRIMARY KEY CLUSTERED (`UserId`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 10

INSERT INTO `UserIssue3128`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @UserId Int32
SET     @UserId = 10
DECLARE @Age Int32
SET     @Age = 18

INSERT INTO `UserDetailsIssue3128`
(
	`UserId`,
	`Age`
)
VALUES
(
	@UserId,
	@Age
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p_1`.`FirstName`,
	`p_1`.`PersonID`,
	`p_1`.`LastName`,
	`p_1`.`MiddleName`,
	`p_1`.`Gender`
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					`UserIssue3128` `t1`
			) as `ex`,
			`p`.`FirstName`,
			`p`.`PersonID`,
			`p`.`LastName`,
			`p`.`MiddleName`,
			`p`.`Gender`
		FROM
			`Person` `p`
	) `p_1`
WHERE
	`p_1`.`ex` > 0

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `UserDetailsIssue3128`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `UserIssue3128`

