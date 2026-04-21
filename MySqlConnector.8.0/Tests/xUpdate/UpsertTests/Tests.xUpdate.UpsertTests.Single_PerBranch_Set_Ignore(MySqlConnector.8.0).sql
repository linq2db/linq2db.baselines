-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @insertTime Datetime -- DateTime
SET     @insertTime = '2026-01-01 10:00:00'
DECLARE @updateTime Datetime -- DateTime
SET     @updateTime = '2026-01-01 12:00:00'

INSERT INTO `UpsertTest`
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
	@insertTime,
	'system'
)
ON DUPLICATE KEY UPDATE
	`Name` = @Name,
	`Version` = @Version,
	`UpdatedAt` = @updateTime,
	`UpdatedBy` = 'system'

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id`,
	`r`.`Name`,
	`r`.`Version`,
	`r`.`CreatedAt`,
	`r`.`CreatedBy`,
	`r`.`UpdatedAt`,
	`r`.`UpdatedBy`
FROM
	`UpsertTest` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version Int32
SET     @Version = 2
DECLARE @insertTime Datetime -- DateTime
SET     @insertTime = '2026-01-01 10:00:00'
DECLARE @updateTime Datetime -- DateTime
SET     @updateTime = '2026-01-01 12:00:00'

INSERT INTO `UpsertTest`
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
	@insertTime,
	'system'
)
ON DUPLICATE KEY UPDATE
	`Name` = @Name,
	`Version` = @Version,
	`UpdatedAt` = @updateTime,
	`UpdatedBy` = 'system'

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id`,
	`r`.`Name`,
	`r`.`Version`,
	`r`.`CreatedAt`,
	`r`.`CreatedBy`,
	`r`.`UpdatedAt`,
	`r`.`UpdatedBy`
FROM
	`UpsertTest` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

