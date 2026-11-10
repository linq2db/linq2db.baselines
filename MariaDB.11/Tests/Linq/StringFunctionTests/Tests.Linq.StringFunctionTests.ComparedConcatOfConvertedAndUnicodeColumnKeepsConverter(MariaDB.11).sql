-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeWithTitleTable` `t`
WHERE
	(CONCAT(Coalesce(`t`.`Code`, ''), Coalesce(`t`.`Title`, ''))) LIKE @Code

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeWithTitleTable` `t`
WHERE
	(CONCAT(Coalesce(`t`.`Code`, ''), Coalesce(`t`.`Title`, ''))) = @bound

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeWithTitleTable` `t`
WHERE
	(CONCAT(Coalesce(`t`.`Code`, ''), Coalesce(`t`.`Title`, ''))) = @bound

