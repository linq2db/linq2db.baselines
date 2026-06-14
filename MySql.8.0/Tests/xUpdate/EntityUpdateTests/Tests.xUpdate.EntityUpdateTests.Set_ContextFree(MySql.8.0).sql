-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Name VarChar(1) -- String
SET     @Name = 'x'
DECLARE @Version Int32
SET     @Version = 5
DECLARE @stamp Datetime -- DateTime
SET     @stamp = '2026-06-01'
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`EntityUpdateTest` `t`
SET
	`t`.`Name` = @Name,
	`t`.`Version` = @Version,
	`t`.`UpdatedAt` = @stamp,
	`t`.`UpdatedBy` = @UpdatedBy
WHERE
	`t`.`Id` = @Id

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Version`,
	`t1`.`UpdatedAt`,
	`t1`.`UpdatedBy`
FROM
	`EntityUpdateTest` `t1`
LIMIT 2

