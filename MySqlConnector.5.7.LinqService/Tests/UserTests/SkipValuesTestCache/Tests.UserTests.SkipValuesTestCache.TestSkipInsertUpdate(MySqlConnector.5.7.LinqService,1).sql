BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `PR_1598_Insert_Table_Cache`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `PR_1598_Insert_Table_Cache`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL,
	`Age`  INT               NULL,

	CONSTRAINT `PK_PR_1598_Insert_Table_Cache` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `PR_1598_Insert_Table_Cache`

