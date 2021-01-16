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

INSERT INTO `PR_1598_Insert_Table_Cache`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`PR_1598_Insert_Table_Cache` `t1`
SET
	`t1`.`Name` = @Name
WHERE
	`t1`.`Id` = @Id

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `PR_1598_Insert_Table_Cache`

