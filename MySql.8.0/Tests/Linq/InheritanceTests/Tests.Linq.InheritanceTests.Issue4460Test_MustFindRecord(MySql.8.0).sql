BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4460Table`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4460Table`
(
	`Id`      INT           NOT NULL,
	`Code`    VARCHAR(4000)     NULL,
	`Name`    VARCHAR(4000)     NULL,
	`Surname` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Code VarChar(10) -- String
SET     @Code = 'GrandChild'
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Tom'
DECLARE @Surname VarChar(5) -- String
SET     @Surname = 'Black'

INSERT INTO `Issue4460Table`
(
	`Id`,
	`Code`,
	`Name`,
	`Surname`
)
VALUES
(
	@Id,
	@Code,
	@Name,
	@Surname
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Code`,
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Surname`
FROM
	`Issue4460Table` `t1`
WHERE
	`t1`.`Code` = 'GrandChild'

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4460Table`

