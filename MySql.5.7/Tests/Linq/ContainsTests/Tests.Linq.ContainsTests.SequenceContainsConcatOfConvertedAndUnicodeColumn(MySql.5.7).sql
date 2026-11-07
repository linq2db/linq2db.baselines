-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CONCAT(Coalesce(`t`.`Code`, ''), Coalesce(`t`.`Title`, ''))
FROM
	`PrefixedCodeWithTitle` `t`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

