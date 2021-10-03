BeforeExecute
-- MySql55 MySql

CREATE TABLE `UserIssue3128`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_UserIssue3128` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql

CREATE TABLE `UserDetailsIssue3128`
(
	`UserId` INT NOT NULL,
	`Age`    INT NOT NULL,

	CONSTRAINT `PK_UserDetailsIssue3128` PRIMARY KEY CLUSTERED (`UserId`)
)

BeforeExecute
-- MySql55 MySql
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
-- MySql55 MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql55 MySql
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
-- MySql55 MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql55 MySql

SELECT
	`t1`.`Id`,
	`a_Details`.`UserId`,
	`a_Details`.`Age`
FROM
	`UserIssue3128` `t1`
		LEFT JOIN `UserDetailsIssue3128` `a_Details` ON `t1`.`Id` = `a_Details`.`UserId`

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `UserDetailsIssue3128`

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `UserIssue3128`

