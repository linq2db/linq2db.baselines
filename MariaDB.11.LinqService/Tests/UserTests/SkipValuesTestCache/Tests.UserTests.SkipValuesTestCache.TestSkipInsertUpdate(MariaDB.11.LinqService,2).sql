BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Int32
SET     @Age = 2

INSERT INTO `PR_1598_Insert_Table_Cache`
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
	`t`.`Age`
FROM
	`PR_1598_Insert_Table_Cache` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Int32
SET     @Age = 2
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`PR_1598_Insert_Table_Cache` `t1`
SET
	`t1`.`Name` = @Name,
	`t1`.`Age` = @Age
WHERE
	`t1`.`Id` = @Id

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_Insert_Table_Cache` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

