BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `PR_1598_Update_Enum_Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `PR_1598_Update_Enum_Table`
(
	`Id`     INT           NOT NULL,
	`Name`   VARCHAR(4000)     NULL,
	`Age`    INT               NULL,
	`Gender` VARCHAR(6)        NULL,

	CONSTRAINT `PK_PR_1598_Update_Enum_Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age Int32
SET     @Age = 20
DECLARE @Gender VarChar(6) -- String
SET     @Gender = 'Female'

INSERT INTO `PR_1598_Update_Enum_Table`
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`,
	`t`.`Gender`
FROM
	`PR_1598_Update_Enum_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Int32
SET     @Age = 2
DECLARE @Gender VarChar(4) -- String
SET     @Gender = 'Male'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`PR_1598_Update_Enum_Table` `t1`
SET
	`t1`.`Name` = @Name,
	`t1`.`Age` = @Age,
	`t1`.`Gender` = @Gender
WHERE
	`t1`.`Id` = @Id

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`,
	`t`.`Gender`
FROM
	`PR_1598_Update_Enum_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Francine'
DECLARE @Age Int32
SET     @Age = 20
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`PR_1598_Update_Enum_Table` `t1`
SET
	`t1`.`Name` = @Name,
	`t1`.`Age` = @Age
WHERE
	`t1`.`Id` = @Id

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`,
	`t`.`Gender`
FROM
	`PR_1598_Update_Enum_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `PR_1598_Update_Enum_Table`

