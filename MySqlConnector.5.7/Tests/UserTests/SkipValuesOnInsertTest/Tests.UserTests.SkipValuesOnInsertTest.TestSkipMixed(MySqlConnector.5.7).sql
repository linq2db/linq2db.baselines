-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age Int32
SET     @Age = 20

INSERT INTO `PR_1598_Mixed_Table`
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
	`PR_1598_Mixed_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Age Int32
SET     @Age = 20
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`PR_1598_Mixed_Table` `t1`
SET
	`t1`.`Age` = @Age
WHERE
	`t1`.`Id` = @Id

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_Mixed_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Age Int32
SET     @Age = 25

INSERT INTO `PR_1598_Mixed_Table`
(
	`Id`,
	`Age`
)
VALUES
(
	@Id,
	@Age
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_Mixed_Table` `t`
WHERE
	`t`.`Id` = 2
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age Int32
SET     @Age = 25
DECLARE @Id Int32
SET     @Id = 2

UPDATE
	`PR_1598_Mixed_Table` `t1`
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
	`PR_1598_Mixed_Table` `t`
WHERE
	`t`.`Id` = 2
LIMIT 1

