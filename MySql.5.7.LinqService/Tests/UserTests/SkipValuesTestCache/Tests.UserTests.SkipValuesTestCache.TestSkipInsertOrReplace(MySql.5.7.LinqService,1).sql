BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `PR_1598_Insert_Table_Cache`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `PR_1598_Insert_Table_Cache`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL,
	`Age`  INT               NULL,

	CONSTRAINT `PK_PR_1598_Insert_Table_Cache` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
ON DUPLICATE KEY UPDATE
	`Name` = @Name

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
ON DUPLICATE KEY UPDATE
	`Name` = @Name

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `PR_1598_Insert_Table_Cache`

