-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Code VarChar(3) -- AnsiString
SET     @Code = 'x:A'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[PrefixedCode] [t]
		WHERE
			CVar(@Code) = CASE
				WHEN [t].[Code] IS NOT NULL THEN CStr([t].[Code])
				ELSE NULL
			END
	)

