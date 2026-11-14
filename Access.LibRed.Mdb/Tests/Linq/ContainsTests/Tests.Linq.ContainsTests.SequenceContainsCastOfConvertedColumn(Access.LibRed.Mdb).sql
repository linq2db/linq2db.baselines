-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Code VarChar(3) -- AnsiString
SET     @Code = 'x:A'

SELECT
	COUNT(*) > 0
FROM
	[PrefixedCode] [t]
WHERE
	IIF([t].[Code] IS NOT NULL, CStr([t].[Code]), NULL) = @Code

