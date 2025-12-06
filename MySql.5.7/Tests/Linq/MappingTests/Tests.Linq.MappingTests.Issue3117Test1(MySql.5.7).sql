-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

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
SET     @userId = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	`u`.`Id`
FROM
	`User` `u`
WHERE
	`u`.`Id` = @userId
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int32
SET     @value = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	`u`.`Id`
FROM
	`User` `u`
WHERE
	`u`.`Id` IN (@value)
LIMIT 1

