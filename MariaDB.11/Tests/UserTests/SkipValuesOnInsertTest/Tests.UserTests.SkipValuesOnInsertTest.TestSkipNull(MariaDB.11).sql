-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'

INSERT INTO `SkipOnInsertNulls`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`SkipOnInsertNulls` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

