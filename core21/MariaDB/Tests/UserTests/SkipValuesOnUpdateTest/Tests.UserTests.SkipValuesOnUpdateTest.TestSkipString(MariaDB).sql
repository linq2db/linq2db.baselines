BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `PR_1598_Update_Table`
(
	`Id`   INT          NOT NULL,
	`Name` VARCHAR(255)     NULL,
	`Age`  INT              NULL,

	CONSTRAINT `PK_PR_1598_Update_Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Manuel'
DECLARE @Age Int32
SET     @Age = 14

INSERT INTO `PR_1598_Update_Table`
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
-- MariaDB MySql.Official MySql
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jacob'
DECLARE @Age Int32
SET     @Age = 15
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`PR_1598_Update_Table` `t1`
SET
	`t1`.`Name` = @Name,
	`t1`.`Age` = @Age
WHERE
	`t1`.`Id` = @Id

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Age Int32
SET     @Age = 22
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`PR_1598_Update_Table` `t1`
SET
	`t1`.`Age` = @Age
WHERE
	`t1`.`Id` = @Id

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `PR_1598_Update_Table`

