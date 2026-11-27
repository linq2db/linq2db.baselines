-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO `SkipOnInsertCache`
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipOnInsertCache` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO `SkipOnInsertCache`
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipOnInsertCache` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

