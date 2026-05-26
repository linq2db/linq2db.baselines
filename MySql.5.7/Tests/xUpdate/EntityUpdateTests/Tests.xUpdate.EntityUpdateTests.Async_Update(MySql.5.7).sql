-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Name VarChar(5) -- String
SET     @Name = 'async'
DECLARE @Version Int32
SET     @Version = 3
DECLARE @UpdatedAt Datetime -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`EntityUpdateTest` `t`
SET
	`t`.`Name` = @Name,
	`t`.`Version` = @Version,
	`t`.`UpdatedAt` = @UpdatedAt,
	`t`.`UpdatedBy` = @UpdatedBy
WHERE
	`t`.`Id` = @Id

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Version`,
	`t1`.`UpdatedAt`,
	`t1`.`UpdatedBy`
FROM
	`EntityUpdateTest` `t1`
LIMIT 2

