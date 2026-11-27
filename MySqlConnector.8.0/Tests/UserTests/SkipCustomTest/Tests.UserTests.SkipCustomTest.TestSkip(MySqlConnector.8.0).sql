-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Int32
SET     @Age = 15

INSERT INTO `SkipCustomValuesTable`
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipCustomValuesTable` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Max'

INSERT INTO `SkipCustomValuesTable`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipCustomValuesTable` `t`
WHERE
	`t`.`Id` = 2
LIMIT 1

