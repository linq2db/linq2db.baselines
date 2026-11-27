-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`a_Details`.`UserId`,
	`a_Details`.`Age`
FROM
	`LoadAsTableUser` `t1`
		LEFT JOIN `LoadAsTableUserDetails` `a_Details` ON `t1`.`Id` = `a_Details`.`UserId`

