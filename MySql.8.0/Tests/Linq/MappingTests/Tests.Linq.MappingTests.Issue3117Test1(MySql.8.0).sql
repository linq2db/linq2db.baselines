BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`
FROM
	`User` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @userId Int32
SET     @userId = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	`u`.`Id`
FROM
	`User` `u`
WHERE
	`u`.`Id` = @userId
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Int32
SET     @value = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	`u`.`Id`
FROM
	`User` `u`
WHERE
	`u`.`Id` IN (@value)
LIMIT 1

