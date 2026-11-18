-- SqlServer.2025.MS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	CAST([t].[Full] AS NVarChar(Max)) || Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	CAST([t].[Left] || [t].[Right] AS NVarChar(Max)) || Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	CAST([t].[Notes] || [t].[Sku] AS NVarChar(Max)) || Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

