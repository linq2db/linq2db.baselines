-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	CASE
		WHEN [t].[Code] IS NULL THEN ''
		ELSE [t].[Code]
	END + CASE
		WHEN [t].[Title] IS NULL THEN ''
		ELSE [t].[Title]
	END
FROM
	[PrefixedCodeWithTitle] [t]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	CASE
		WHEN CVar(@Code) IN (
			SELECT
				CASE
					WHEN [t].[Code] IS NULL THEN ''
					ELSE [t].[Code]
				END + CASE
					WHEN [t].[Title] IS NULL THEN ''
					ELSE [t].[Title]
				END
			FROM
				[PrefixedCodeWithTitle] [t]
		)
			THEN True
		ELSE False
	END

