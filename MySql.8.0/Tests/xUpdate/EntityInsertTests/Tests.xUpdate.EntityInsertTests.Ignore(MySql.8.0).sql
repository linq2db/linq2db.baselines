-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'n'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @CreatedAt Datetime -- DateTime
SET     @CreatedAt = NULL

INSERT INTO `EntityInsertTest`
(
	`Id`,
	`Name`,
	`Version`,
	`CreatedAt`
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@CreatedAt
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Version`,
	`t1`.`CreatedAt`,
	`t1`.`CreatedBy`
FROM
	`EntityInsertTest` `t1`
LIMIT 2

