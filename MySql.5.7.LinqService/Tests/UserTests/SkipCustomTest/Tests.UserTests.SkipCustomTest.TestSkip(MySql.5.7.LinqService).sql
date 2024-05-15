BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `PR_1598_SkipCustom_Table`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `PR_1598_SkipCustom_Table`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL,
	`Age`  INT               NULL,

	CONSTRAINT `PK_PR_1598_SkipCustom_Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Int32
SET     @Age = 15

INSERT INTO `PR_1598_SkipCustom_Table`
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_SkipCustom_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Max'

INSERT INTO `PR_1598_SkipCustom_Table`
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_SkipCustom_Table` `t`
WHERE
	`t`.`Id` = 2
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `PR_1598_SkipCustom_Table`

