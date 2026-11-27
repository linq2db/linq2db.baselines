-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar -- String
SET     @Name = NULL

INSERT INTO `SkipOnInsertFluent`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipOnInsertFluent` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

