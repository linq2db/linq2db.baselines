-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'a'
DECLARE @Age Int32
SET     @Age = 5

INSERT INTO `OptRow`
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
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar -- String
SET     @Name = NULL
DECLARE @Age Int32
SET     @Age = NULL

INSERT INTO `OptRow`
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
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Name VarChar(1) -- String
SET     @Name = 'b'
DECLARE @Age Int32
SET     @Age = 7

INSERT INTO `OptRow`
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
	`x`.`Name`
FROM
	`OptRow` `x`
WHERE
	`x`.`Name` IS NOT NULL

