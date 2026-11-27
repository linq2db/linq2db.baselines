-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO `SkipOnInsertCache`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)
ON DUPLICATE KEY UPDATE
	`Name` = @Name

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipOnInsertCache` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO `SkipOnInsertCache`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)
ON DUPLICATE KEY UPDATE
	`Name` = @Name

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipOnInsertCache` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

