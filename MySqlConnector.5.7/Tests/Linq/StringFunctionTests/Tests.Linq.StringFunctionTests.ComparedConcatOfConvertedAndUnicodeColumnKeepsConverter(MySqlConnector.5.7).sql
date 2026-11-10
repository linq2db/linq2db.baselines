-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeWithTitleTable` `t`
WHERE
	(CONCAT(Coalesce(`t`.`Code`, ''), Coalesce(`t`.`Title`, ''))) LIKE @Code

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeWithTitleTable` `t`
WHERE
	(CONCAT(Coalesce(`t`.`Code`, ''), Coalesce(`t`.`Title`, ''))) = @bound

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeWithTitleTable` `t`
WHERE
	(CONCAT(Coalesce(`t`.`Code`, ''), Coalesce(`t`.`Title`, ''))) = @bound

