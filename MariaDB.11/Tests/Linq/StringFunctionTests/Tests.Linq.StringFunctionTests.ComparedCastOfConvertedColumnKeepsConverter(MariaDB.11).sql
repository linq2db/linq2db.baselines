-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:A%'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeTable` `t`
WHERE
	CAST(`t`.`Code` AS CHAR(40)) LIKE @Code

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @bound VarChar(3) -- AnsiString
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeTable` `t`
WHERE
	CAST(`t`.`Code` AS CHAR(40)) = @bound

