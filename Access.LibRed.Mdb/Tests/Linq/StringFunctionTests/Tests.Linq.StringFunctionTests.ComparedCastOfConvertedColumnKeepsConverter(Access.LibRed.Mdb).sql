-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:A%'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeTable] [t]
WHERE
	IIF([t].[Code] IS NOT NULL, CStr([t].[Code]), NULL) LIKE @Code

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @bound VarChar(3) -- AnsiString
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeTable] [t]
WHERE
	IIF([t].[Code] IS NOT NULL, CStr([t].[Code]), NULL) = @bound

