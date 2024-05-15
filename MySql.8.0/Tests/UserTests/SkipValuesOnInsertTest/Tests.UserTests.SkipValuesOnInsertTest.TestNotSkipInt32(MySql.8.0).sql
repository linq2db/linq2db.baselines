BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `PR_1598_Insert_Table`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `PR_1598_Insert_Table`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL,
	`Age`  INT               NULL,

	CONSTRAINT `PK_PR_1598_Insert_Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Smith'
DECLARE @Age Int32
SET     @Age = 55

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_Insert_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Int32
SET     @Age = 50

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_Insert_Table` `t`
WHERE
	`t`.`Id` = 2
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `PR_1598_Insert_Table`

