BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `PR_1598_Insert_Table_Cache`
(
	`Id`   INT          NOT NULL,
	`Name` VARCHAR(255)     NULL,
	`Age`  INT              NULL,

	CONSTRAINT `PK_PR_1598_Insert_Table_Cache` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql
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
ON DUPLICATE KEY UPDATE
	`Name` = @Name,
	`Age` = @Age

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	`t`.`Id`, 
	`t`.`Name`, 
	`t`.`Age`
FROM
	`PR_1598_Insert_Table_Cache` `t`
WHERE
	`t`.`Id` = 1
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
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
ON DUPLICATE KEY UPDATE
	`Name` = @Name,
	`Age` = @Age

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	`t`.`Id`, 
	`t`.`Name`, 
	`t`.`Age`
FROM
	`PR_1598_Insert_Table_Cache` `t`
WHERE
	`t`.`Id` = 1
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `PR_1598_Insert_Table_Cache`

