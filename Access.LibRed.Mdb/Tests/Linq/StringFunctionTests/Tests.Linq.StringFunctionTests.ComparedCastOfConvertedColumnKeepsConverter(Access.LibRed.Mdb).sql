-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:A%'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeTable] [t]
WHERE
	CASE
		WHEN [t].[Code] IS NOT NULL THEN CStr([t].[Code])
		ELSE NULL
	END LIKE @Code

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @bound VarChar(3) -- AnsiString
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeTable] [t]
WHERE
	CASE
		WHEN [t].[Code] IS NOT NULL THEN CStr([t].[Code])
		ELSE NULL
	END = @bound

