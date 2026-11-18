-- SqlServer.2017
SELECT TOP (2)
	Coalesce([t].[Code], '') + Coalesce([t].[Title], N'')
FROM
	[PrefixedCodeWithTitle] [t]

-- SqlServer.2017
DECLARE @Code VarChar(20) -- AnsiString
SET     @Code = N'x:AT'

SELECT
	IIF(@Code IN (
		SELECT
			Coalesce([t].[Code], '') + Coalesce([t].[Title], N'')
		FROM
			[PrefixedCodeWithTitle] [t]
	), 1, 0)

