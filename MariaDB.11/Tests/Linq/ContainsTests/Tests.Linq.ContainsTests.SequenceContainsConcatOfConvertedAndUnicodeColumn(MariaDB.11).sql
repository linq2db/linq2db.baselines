-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CONCAT(Coalesce(`t`.`Code`, ''), Coalesce(`t`.`Title`, ''))
FROM
	`PrefixedCodeWithTitle` `t`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	CASE
		WHEN @Code IN (
			SELECT
				CONCAT(Coalesce(`t`.`Code`, ''), Coalesce(`t`.`Title`, ''))
			FROM
				`PrefixedCodeWithTitle` `t`
		)
			THEN 1
		ELSE 0
	END as `c1`

