BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age Int32
SET     @Age = 20
DECLARE @Gender VarChar(4) -- String
SET     @Gender = 'Male'

INSERT INTO `PR_1598_Insert_Enum_Table`
(
	`Id`,
	`Name`,
	`Age`,
	`Gender`
)
VALUES
(
	@Id,
	@Name,
	@Age,
	@Gender
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`,
	`t`.`Gender`
FROM
	`PR_1598_Insert_Enum_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jenny'
DECLARE @Age Int32
SET     @Age = 25

INSERT INTO `PR_1598_Insert_Enum_Table`
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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`,
	`t`.`Gender`
FROM
	`PR_1598_Insert_Enum_Table` `t`
WHERE
	`t`.`Id` = 2
LIMIT 1

