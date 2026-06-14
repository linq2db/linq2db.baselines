-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(6) -- String
SET     @Name = 'ts-ins'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Datetime -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @CreatedAt Datetime -- DateTime
SET     @CreatedAt = NULL

INSERT INTO `UpsertTest`
(
	`Id`,
	`Name`,
	`Version`,
	`CreatedAt`,
	`CreatedBy`,
	`UpdatedAt`,
	`UpdatedBy`
)
VALUES
(
	@Id,
	@Name,
	@Version,
	CURRENT_TIMESTAMP,
	@CreatedBy,
	@UpdatedAt,
	@UpdatedBy
)
ON DUPLICATE KEY UPDATE
	`Name` = @Name,
	`Version` = @Version,
	`CreatedAt` = @CreatedAt,
	`CreatedBy` = @CreatedBy,
	`UpdatedAt` = @UpdatedAt,
	`UpdatedBy` = @UpdatedBy

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(6) -- String
SET     @Name = 'ts-upd'
DECLARE @Version Int32
SET     @Version = 2
DECLARE @CreatedAt Datetime -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Datetime -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL

INSERT INTO `UpsertTest`
(
	`Id`,
	`Name`,
	`Version`,
	`CreatedAt`,
	`CreatedBy`,
	`UpdatedAt`,
	`UpdatedBy`
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@CreatedAt,
	@CreatedBy,
	@UpdatedAt,
	@UpdatedBy
)
ON DUPLICATE KEY UPDATE
	`Name` = @Name,
	`Version` = @Version,
	`CreatedAt` = @CreatedAt,
	`CreatedBy` = @CreatedBy,
	`UpdatedAt` = CURRENT_TIMESTAMP,
	`UpdatedBy` = @UpdatedBy

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(7) -- String
SET     @Name = 'root-ts'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Datetime -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL

INSERT INTO `UpsertTest`
(
	`Id`,
	`Name`,
	`Version`,
	`CreatedAt`,
	`CreatedBy`,
	`UpdatedAt`,
	`UpdatedBy`
)
VALUES
(
	@Id,
	@Name,
	@Version,
	CURRENT_TIMESTAMP,
	@CreatedBy,
	@UpdatedAt,
	@UpdatedBy
)
ON DUPLICATE KEY UPDATE
	`Name` = @Name,
	`Version` = @Version,
	`CreatedAt` = CURRENT_TIMESTAMP,
	`CreatedBy` = @CreatedBy,
	`UpdatedAt` = @UpdatedAt,
	`UpdatedBy` = @UpdatedBy

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
	`r`.`Id` = 2
LIMIT 2

