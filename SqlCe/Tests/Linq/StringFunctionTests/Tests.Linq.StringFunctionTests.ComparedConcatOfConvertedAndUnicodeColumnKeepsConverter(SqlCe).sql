-- SqlCe
DECLARE @Code NVarChar(4) -- String
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(Coalesce([t].[Code], '') + Coalesce([t].[Title], '')) LIKE @Code

-- SqlCe
DECLARE @bound NVarChar(4) -- String
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(Coalesce([t].[Code], '') + Coalesce([t].[Title], '')) = @bound

-- SqlCe
DECLARE @bound NVarChar(4) -- String
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(Coalesce([t].[Code], '') + Coalesce([t].[Title], '')) = @bound

