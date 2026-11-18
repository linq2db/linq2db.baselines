-- SqlCe
DECLARE @Code NVarChar(4) -- String
SET     @Code = 'x:A%'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeTable] [t]
WHERE
	CAST([t].[Code] AS NVarChar(40)) LIKE @Code

-- SqlCe
DECLARE @bound NVarChar(3) -- String
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeTable] [t]
WHERE
	CAST([t].[Code] AS NVarChar(40)) = @bound

