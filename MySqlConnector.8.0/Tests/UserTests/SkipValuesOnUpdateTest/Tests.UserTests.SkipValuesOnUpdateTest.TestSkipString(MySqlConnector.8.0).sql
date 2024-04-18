﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `PR_1598_Update_Table`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `PR_1598_Update_Table`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL,
	`Age`  INT               NULL,

	CONSTRAINT `PK_PR_1598_Update_Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_Update_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_Update_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_Update_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `PR_1598_Update_Table`

