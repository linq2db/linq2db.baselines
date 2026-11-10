-- SqlServer.2025.MS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	Coalesce(CAST(JSON_VALUE([t].[Doc], N'$.a') AS NVarChar(Max)), N'') || [t].[Left],
	CAST([t].[Left] AS NVarChar(Max)) || Coalesce(JSON_VALUE([t].[Doc], N'$.a'), N'') || [t].[Right],
	Coalesce(CAST(JSON_VALUE([t].[Doc], N'$.a') AS NVarChar(Max)), N'') || [t].[Left] || [t].[Right] || Coalesce(@suffix, N'')
FROM
	[MaxArgumentFunctionRow] [t]

