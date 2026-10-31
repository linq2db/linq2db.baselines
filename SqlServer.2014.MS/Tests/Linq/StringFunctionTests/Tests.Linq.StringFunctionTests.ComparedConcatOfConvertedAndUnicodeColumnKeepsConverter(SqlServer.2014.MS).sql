-- SqlServer.2014.MS SqlServer.2014
DECLARE @Code VarChar(20) -- AnsiString
SET     @Code = N'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(Coalesce([t].[Code], '') + Coalesce([t].[Title], N'')) LIKE @Code

-- SqlServer.2014.MS SqlServer.2014
DECLARE @bound VarChar(20) -- AnsiString
SET     @bound = N'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(Coalesce([t].[Code], '') + Coalesce([t].[Title], N'')) = @bound

