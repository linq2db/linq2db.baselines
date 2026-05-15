-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 100
DECLARE @CharColumn String -- AnsiStringFixedLength
SET     @CharColumn = NULL
DECLARE @NCharColumn String -- StringFixedLength
SET     @NCharColumn = NULL
DECLARE @VarCharColumn VarChar -- AnsiString
SET     @VarCharColumn = NULL
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
	CASE
		WHEN `t`.`VarCharColumn` IS NOT NULL THEN REGEXP_REPLACE(`t`.`VarCharColumn`, '(?-i)[.+]+$', '')
		ELSE NULL
	END
FROM
	`StringTrimTable` `t`
WHERE
	`t`.`Id` = 100

