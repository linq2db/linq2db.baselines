-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(2) -- String
SET     @Name = 'n1'
DECLARE @Version Int32
SET     @Version = 7
DECLARE @CreatedAt Datetime -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar(2) -- String
SET     @CreatedBy = 'u1'

INSERT INTO `EntityInsertTest`
(
	`Id`,
	`Name`,
	`Version`,
	`CreatedAt`,
	`CreatedBy`
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@CreatedAt,
	@CreatedBy
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Version`,
	`t1`.`CreatedAt`,
	`t1`.`CreatedBy`
FROM
	`EntityInsertTest` `t1`
LIMIT 2

