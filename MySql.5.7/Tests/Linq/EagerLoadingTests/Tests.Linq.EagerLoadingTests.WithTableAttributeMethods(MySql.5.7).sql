BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `UserIssue3128`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `UserIssue3128`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_UserIssue3128` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `UserDetailsIssue3128`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `UserDetailsIssue3128`
(
	`UserId` INT NOT NULL,
	`Age`    INT NOT NULL,

	CONSTRAINT `PK_UserDetailsIssue3128` PRIMARY KEY CLUSTERED (`UserId`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
			`UserIssue3128` `t1`
	) > 0

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `UserDetailsIssue3128`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `UserIssue3128`

