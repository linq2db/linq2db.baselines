BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `UserIssue3128`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `UserIssue3128`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_UserIssue3128` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `UserDetailsIssue3128`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `UserDetailsIssue3128`
(
	`UserId` INT NOT NULL,
	`Age`    INT NOT NULL,

	CONSTRAINT `PK_UserDetailsIssue3128` PRIMARY KEY CLUSTERED (`UserId`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`a_Details`.`UserId`,
	`a_Details`.`Age`
FROM
	`UserIssue3128` `t1`
		LEFT JOIN `UserDetailsIssue3128` `a_Details` ON `t1`.`Id` = `a_Details`.`UserId`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `UserDetailsIssue3128`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `UserIssue3128`

