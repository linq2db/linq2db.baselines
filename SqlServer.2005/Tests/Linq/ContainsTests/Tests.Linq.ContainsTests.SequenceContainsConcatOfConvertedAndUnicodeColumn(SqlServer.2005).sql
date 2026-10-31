-- SqlServer.2005
SELECT TOP (2)
	Coalesce([t].[Code], '') + Coalesce([t].[Title], N'')
FROM
	[PrefixedCodeWithTitle] [t]

-- SqlServer.2005
DECLARE @Code VarChar(20) -- AnsiString
SET     @Code = N'x:AT'

SELECT
	CASE
		WHEN @Code IN (
			SELECT
				Coalesce([t].[Code], '') + Coalesce([t].[Title], N'')
			FROM
				[PrefixedCodeWithTitle] [t]
		)
			THEN 1
		ELSE 0
	END

