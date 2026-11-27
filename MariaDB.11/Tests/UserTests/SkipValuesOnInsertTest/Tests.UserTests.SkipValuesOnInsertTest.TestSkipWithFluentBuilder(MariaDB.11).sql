-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar -- String
SET     @Name = NULL

INSERT INTO `SkipOnInsertFluent`
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
	`SkipOnInsertFluent` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

