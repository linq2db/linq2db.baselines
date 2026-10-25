-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
CREATE TEMPORARY TABLE `SourceSchemaRowTemp`
(
	`Id`    INT           NOT NULL,
	`Value` INT           NOT NULL,
	`Name`  VARCHAR(4000)     NULL,

	CONSTRAINT `PK_SourceSchemaRowTemp` PRIMARY KEY CLUSTERED (`Id`, `Value`)
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value Int32
SET     @Value = 6
DECLARE @Name VarChar(1) -- String
SET     @Name = 'b'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`SourceSchemaRow` `t`
SET
	`t`.`Value` = @Value,
	`t`.`Name` = @Name
WHERE
	`t`.`Id` = @Id

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DROP TEMPORARY TABLE IF EXISTS `SourceSchemaRowTemp`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`Name`
FROM
	`SourceSchemaRow` `t1`
LIMIT 2

