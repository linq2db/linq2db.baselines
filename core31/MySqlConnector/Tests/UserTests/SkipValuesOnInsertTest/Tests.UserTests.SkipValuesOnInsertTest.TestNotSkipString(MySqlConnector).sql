BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `PR_1598_Insert_Table`
(
	`Id`   INT          NOT NULL,
	`Name` VARCHAR(255)     NULL,
	`Age`  INT              NULL,

	CONSTRAINT `PK_PR_1598_Insert_Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Paul'
DECLARE @Age Int32
SET     @Age = 14

INSERT INTO `PR_1598_Insert_Table`
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
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Mary'
DECLARE @Age Int32
SET     @Age = 15

INSERT INTO `PR_1598_Insert_Table`
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
-- MySqlConnector MySql

DROP TABLE `PR_1598_Insert_Table`

