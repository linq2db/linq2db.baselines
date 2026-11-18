-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeWithTitleTable` `t`
WHERE
	(CONCAT(Coalesce(`t`.`Code`, ''), Coalesce(`t`.`Title`, ''))) LIKE @Code

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeWithTitleTable` `t`
WHERE
	(CONCAT(Coalesce(`t`.`Code`, ''), Coalesce(`t`.`Title`, ''))) = @bound

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeWithTitleTable` `t`
WHERE
	(CONCAT(Coalesce(`t`.`Code`, ''), Coalesce(`t`.`Title`, ''))) = @bound

