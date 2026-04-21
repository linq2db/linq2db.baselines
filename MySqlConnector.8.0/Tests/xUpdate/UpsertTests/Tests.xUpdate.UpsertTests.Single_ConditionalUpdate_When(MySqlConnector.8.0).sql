-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1

SELECT
	1
FROM
	`UpsertTest` `t1`
WHERE
	`t1`.`Id` = @Id

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Name VarChar(5) -- String
SET     @Name = 'stale'
DECLARE @Version Int32
SET     @Version = 3
DECLARE @CreatedAt Datetime -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Datetime -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`UpsertTest` `t1`
SET
	`t1`.`Name` = @Name,
	`t1`.`Version` = @Version,
	`t1`.`CreatedAt` = @CreatedAt,
	`t1`.`CreatedBy` = @CreatedBy,
	`t1`.`UpdatedAt` = @UpdatedAt,
	`t1`.`UpdatedBy` = @UpdatedBy
WHERE
	`t1`.`Id` = @Id AND @Version > `t1`.`Version`

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

SELECT
	1
FROM
	`UpsertTest` `t1`
WHERE
	`t1`.`Id` = @Id

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Name VarChar(5) -- String
SET     @Name = 'fresh'
DECLARE @Version Int32
SET     @Version = 10
DECLARE @CreatedAt Datetime -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Datetime -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`UpsertTest` `t1`
SET
	`t1`.`Name` = @Name,
	`t1`.`Version` = @Version,
	`t1`.`CreatedAt` = @CreatedAt,
	`t1`.`CreatedBy` = @CreatedBy,
	`t1`.`UpdatedAt` = @UpdatedAt,
	`t1`.`UpdatedBy` = @UpdatedBy
WHERE
	`t1`.`Id` = @Id AND @Version > `t1`.`Version`

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

