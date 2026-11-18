-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CONCAT(Coalesce(`t`.`Code`, ''), Coalesce(`t`.`Title`, ''))
FROM
	`PrefixedCodeWithTitle` `t`
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

