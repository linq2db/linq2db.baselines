-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Code VarChar(3) -- AnsiString
SET     @Code = 'x:A'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeTable` `t`
WHERE
	CAST(`t`.`Code` AS CHAR(40)) LIKE @Code

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @bound VarChar(3) -- AnsiString
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeTable` `t`
WHERE
	CAST(`t`.`Code` AS CHAR(40)) = @bound

