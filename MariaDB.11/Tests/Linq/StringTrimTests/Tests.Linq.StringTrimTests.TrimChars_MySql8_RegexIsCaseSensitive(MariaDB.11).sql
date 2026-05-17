-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 100
DECLARE @CharColumn String -- AnsiStringFixedLength
SET     @CharColumn = NULL
DECLARE @NCharColumn String -- StringFixedLength
SET     @NCharColumn = NULL
DECLARE @VarCharColumn VarChar(5) -- AnsiString
SET     @VarCharColumn = 'Hello'
DECLARE @NVarCharColumn VarChar -- String
SET     @NVarCharColumn = NULL

INSERT INTO `StringTrimTable`
(
	`Id`,
	`CharColumn`,
	`NCharColumn`,
	`VarCharColumn`,
	`NVarCharColumn`
)
VALUES
(
	@Id,
	@CharColumn,
	@NCharColumn,
	@VarCharColumn,
	@NVarCharColumn
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	REGEXP_REPLACE(`t`.`VarCharColumn`, '(?-i)^[h]+', '')
FROM
	`StringTrimTable` `t`
WHERE
	`t`.`Id` = 100
LIMIT 2

