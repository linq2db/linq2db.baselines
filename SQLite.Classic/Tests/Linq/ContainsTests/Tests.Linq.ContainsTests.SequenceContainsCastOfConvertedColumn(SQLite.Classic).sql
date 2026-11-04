-- SQLite.Classic SQLite
DECLARE @Code VarChar(3) -- AnsiString
SET     @Code = 'x:A'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[PrefixedCode] [t]
		WHERE
			@Code = CAST([t].[Code] AS NVarChar(40))
	)

