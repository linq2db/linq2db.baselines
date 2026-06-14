-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'a'
DECLARE @Version Int32
SET     @Version = 1
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
	`UpdatedAt` = @UpdatedAt,
	`UpdatedBy` = @UpdatedBy

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'b'
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
	`UpdatedAt` = @UpdatedAt,
	`UpdatedBy` = @UpdatedBy

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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

