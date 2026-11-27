-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipOnInsertFluent` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

