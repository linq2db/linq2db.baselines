-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Int32
SET     @Age = 15

INSERT INTO `SkipCustomValuesTable`
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipCustomValuesTable` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Max'

INSERT INTO `SkipCustomValuesTable`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipCustomValuesTable` `t`
WHERE
	`t`.`Id` = 2
LIMIT 1

