-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Int32
SET     @Age = 2

INSERT INTO `SkipOnInsertCache`
(
	`Id`,
	`Name`,
	`Age`
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipOnInsertCache` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Int32
SET     @Age = 2
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`SkipOnInsertCache` `t1`
SET
	`t1`.`Name` = @Name,
	`t1`.`Age` = @Age
WHERE
	`t1`.`Id` = @Id

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipOnInsertCache` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

