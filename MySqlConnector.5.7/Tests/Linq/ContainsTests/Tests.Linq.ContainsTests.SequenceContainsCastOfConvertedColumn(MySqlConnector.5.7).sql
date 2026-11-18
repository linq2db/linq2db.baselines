-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

