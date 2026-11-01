-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Code VarChar(3) -- AnsiString
SET     @Code = 'x:A'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`PrefixedCode` `t`
		WHERE
			@Code = CAST(`t`.`Code` AS CHAR(40))
	) as `c1`

