-- SqlServer.CS.MS SqlServer.2025
DECLARE @Code VarChar(20) -- AnsiString
SET     @Code = N'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(Coalesce([t].[Code], '') || Coalesce([t].[Title], N'')) LIKE @Code

-- SqlServer.CS.MS SqlServer.2025
DECLARE @bound VarChar(20) -- AnsiString
SET     @bound = N'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(Coalesce([t].[Code], '') || Coalesce([t].[Title], N'')) = @bound

-- SqlServer.CS.MS SqlServer.2025
DECLARE @bound VarChar(20) -- AnsiString
SET     @bound = N'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(Coalesce([t].[Code], '') || Coalesce([t].[Title], N'')) = @bound

