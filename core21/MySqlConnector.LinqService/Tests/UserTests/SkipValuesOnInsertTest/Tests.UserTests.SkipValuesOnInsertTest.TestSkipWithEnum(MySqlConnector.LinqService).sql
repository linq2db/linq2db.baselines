BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `PR_1598_Insert_Enum_Table`
(
	`Id`     INT          NOT NULL,
	`Name`   VARCHAR(255)     NULL,
	`Age`    INT              NULL,
	`Gender` VARCHAR(6)       NULL,

	CONSTRAINT `PK_PR_1598_Insert_Enum_Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`,
	`t`.`Gender`
FROM
	`PR_1598_Insert_Enum_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`,
	`t`.`Gender`
FROM
	`PR_1598_Insert_Enum_Table` `t`
WHERE
	`t`.`Id` = 2
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `PR_1598_Insert_Enum_Table`

