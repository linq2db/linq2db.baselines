-- Sybase.Managed Sybase
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(Coalesce([t].[Code], '') || Coalesce([t].[Title], '')) LIKE @Code

-- Sybase.Managed Sybase
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(Coalesce([t].[Code], '') || Coalesce([t].[Title], '')) = @bound

-- Sybase.Managed Sybase
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(Coalesce([t].[Code], '') || Coalesce([t].[Title], '')) = @bound

