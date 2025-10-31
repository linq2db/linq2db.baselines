-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 5

INSERT INTO `User`
(
	`Id`
)
VALUES
(
	@Id
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT LAST_INSERT_ID()

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`
FROM
	`User` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @userId Int32
SET     @userId = 5

SELECT
	`u`.`Id`
FROM
	`User` `u`
WHERE
	`u`.`Id` = @userId
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`u`.`Id`
FROM
	`User` `u`
WHERE
	`u`.`Id` IN (5)
LIMIT 1

