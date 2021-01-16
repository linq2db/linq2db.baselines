BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `PR_1598_Insert_Fluent_Table`
(
	`Id`   INT          NOT NULL,
	`Name` VARCHAR(255)     NULL,
	`Age`  INT              NULL,

	CONSTRAINT `PK_PR_1598_Insert_Fluent_Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar -- String
SET     @Name = NULL

INSERT INTO `PR_1598_Insert_Fluent_Table`
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

DROP TABLE `PR_1598_Insert_Fluent_Table`

