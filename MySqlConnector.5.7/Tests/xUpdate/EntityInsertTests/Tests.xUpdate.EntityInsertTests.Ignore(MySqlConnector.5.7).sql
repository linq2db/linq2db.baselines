-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Version`,
	`t1`.`CreatedAt`,
	`t1`.`CreatedBy`
FROM
	`EntityInsertTest` `t1`
LIMIT 2

