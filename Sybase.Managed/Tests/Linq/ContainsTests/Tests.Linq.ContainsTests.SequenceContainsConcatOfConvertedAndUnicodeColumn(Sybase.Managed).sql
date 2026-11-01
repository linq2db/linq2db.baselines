-- Sybase.Managed Sybase
SELECT TOP 2
	Coalesce([t].[Code], '') || Coalesce([t].[Title], '')
FROM
	[PrefixedCodeWithTitle] [t]

-- Sybase.Managed Sybase
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	CASE
		WHEN @Code IN (
			SELECT
				Coalesce([t].[Code], '') || Coalesce([t].[Title], '')
			FROM
				[PrefixedCodeWithTitle] [t]
		)
			THEN 1
		ELSE 0
	END

