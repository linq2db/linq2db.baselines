-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Smith'

INSERT INTO `SkipOnInsertTable`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipOnInsertTable` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'

INSERT INTO `SkipOnInsertTable`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipOnInsertTable` `t`
WHERE
	`t`.`Id` = 2
LIMIT 1

