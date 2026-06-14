-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'n'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @stamp Datetime -- DateTime
SET     @stamp = '2026-01-01 10:00:00'
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL

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
	@stamp,
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

