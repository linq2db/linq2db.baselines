-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

