-- SqlServer.CS.MS SqlServer.2025
DECLARE @Code VarChar(20) -- AnsiString
SET     @Code = N'x:A'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeTable] [t]
WHERE
	CAST([t].[Code] AS NVarChar(40)) LIKE @Code

-- SqlServer.CS.MS SqlServer.2025
DECLARE @bound VarChar(20) -- AnsiString
SET     @bound = N'x:A'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeTable] [t]
WHERE
	CAST([t].[Code] AS NVarChar(40)) = @bound

