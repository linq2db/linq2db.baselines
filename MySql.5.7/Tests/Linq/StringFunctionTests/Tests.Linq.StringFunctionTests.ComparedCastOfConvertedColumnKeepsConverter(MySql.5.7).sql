-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Code VarChar(3) -- AnsiString
SET     @Code = 'x:A'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeTable` `t`
WHERE
	CAST(`t`.`Code` AS CHAR(40)) LIKE @Code

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @bound VarChar(3) -- AnsiString
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeTable` `t`
WHERE
	CAST(`t`.`Code` AS CHAR(40)) = @bound

