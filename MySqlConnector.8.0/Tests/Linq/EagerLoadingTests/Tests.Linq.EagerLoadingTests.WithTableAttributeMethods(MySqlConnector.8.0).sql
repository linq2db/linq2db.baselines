BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

