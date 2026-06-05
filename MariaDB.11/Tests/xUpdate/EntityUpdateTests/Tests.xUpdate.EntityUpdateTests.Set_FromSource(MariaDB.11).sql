-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Name VarChar(5) -- String
SET     @Name = 'alice'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @UpdatedAt Datetime -- DateTime
SET     @UpdatedAt = NULL
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`EntityUpdateTest` `t`
SET
	`t`.`Name` = @Name,
	`t`.`Version` = @Version,
	`t`.`UpdatedAt` = @UpdatedAt,
	`t`.`UpdatedBy` = @Name
WHERE
	`t`.`Id` = @Id

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Version`,
	`t1`.`UpdatedAt`,
	`t1`.`UpdatedBy`
FROM
	`EntityUpdateTest` `t1`
LIMIT 2

