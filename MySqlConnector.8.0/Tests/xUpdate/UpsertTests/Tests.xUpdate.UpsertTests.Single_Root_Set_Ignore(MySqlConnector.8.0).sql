-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @CreatedAt Datetime -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified Datetime -- DateTime
SET     @modified = '2026-02-02 09:00:00'
DECLARE @UpdatedBy VarChar(12) -- String
SET     @UpdatedBy = 'sys-root-ins'

INSERT INTO `UpsertTest`
(
	`Id`,
	`Name`,
	`Version`,
	`CreatedAt`,
	`UpdatedAt`,
	`UpdatedBy`
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@CreatedAt,
	@modified,
	@UpdatedBy
)
ON DUPLICATE KEY UPDATE
	`Name` = @Name,
	`Version` = @Version,
	`CreatedAt` = @CreatedAt,
	`UpdatedAt` = @modified,
	`UpdatedBy` = @UpdatedBy

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Version`,
	`t1`.`CreatedAt`,
	`t1`.`CreatedBy`,
	`t1`.`UpdatedAt`,
	`t1`.`UpdatedBy`
FROM
	`UpsertTest` `t1`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'root-upd'
DECLARE @Version Int32
SET     @Version = 2
DECLARE @CreatedAt Datetime -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified Datetime -- DateTime
SET     @modified = '2026-02-02 09:00:00'
DECLARE @UpdatedBy VarChar(12) -- String
SET     @UpdatedBy = 'sys-root-upd'

INSERT INTO `UpsertTest`
(
	`Id`,
	`Name`,
	`Version`,
	`CreatedAt`,
	`UpdatedAt`,
	`UpdatedBy`
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@CreatedAt,
	@modified,
	@UpdatedBy
)
ON DUPLICATE KEY UPDATE
	`Name` = @Name,
	`Version` = @Version,
	`CreatedAt` = @CreatedAt,
	`UpdatedAt` = @modified,
	`UpdatedBy` = @UpdatedBy

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Version`,
	`t1`.`CreatedAt`,
	`t1`.`CreatedBy`,
	`t1`.`UpdatedAt`,
	`t1`.`UpdatedBy`
FROM
	`UpsertTest` `t1`
LIMIT 2

