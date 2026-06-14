-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Name VarChar(4) -- String
SET     @Name = 'new1'
DECLARE @Version Int32
SET     @Version = 5
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
	`t`.`Version` = `t`.`Version` + @Version,
	`t`.`UpdatedAt` = @UpdatedAt,
	`t`.`UpdatedBy` = @UpdatedBy
WHERE
	`t`.`Id` = @Id

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Name VarChar(4) -- String
SET     @Name = 'new2'
DECLARE @Version Int32
SET     @Version = 10
DECLARE @UpdatedAt Datetime -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int32
SET     @Id = 2

UPDATE
	`EntityUpdateTest` `t`
SET
	`t`.`Name` = @Name,
	`t`.`Version` = `t`.`Version` + @Version,
	`t`.`UpdatedAt` = @UpdatedAt,
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
ORDER BY
	`t1`.`Id`

