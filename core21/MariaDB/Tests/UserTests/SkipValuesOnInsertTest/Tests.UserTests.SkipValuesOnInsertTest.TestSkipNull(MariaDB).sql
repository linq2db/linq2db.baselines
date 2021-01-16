BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `PR_1598_Insert_Null_Table`
(
	`Id`   INT          NOT NULL,
	`Name` VARCHAR(255)     NULL,
	`Age`  INT              NULL,

	CONSTRAINT `PK_PR_1598_Insert_Null_Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'

INSERT INTO `PR_1598_Insert_Null_Table`
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
DECLARE @take Int32
SET     @take = 1

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_Insert_Null_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `PR_1598_Insert_Null_Table`

