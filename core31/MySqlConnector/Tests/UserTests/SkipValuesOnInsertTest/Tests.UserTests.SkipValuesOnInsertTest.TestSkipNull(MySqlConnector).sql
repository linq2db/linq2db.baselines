BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `PR_1598_Insert_Null_Table`
(
	`Id`   INT          NOT NULL,
	`Name` VARCHAR(255)     NULL,
	`Age`  INT              NULL,

	CONSTRAINT `PK_PR_1598_Insert_Null_Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

DROP TABLE `PR_1598_Insert_Null_Table`

