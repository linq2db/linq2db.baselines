-- SqlServer.2025.MS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	Upper([t].[Sku]) || Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	Lower([t].[Sku]) || Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	LTrim(RTrim([t].[Sku])) || Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'x'

SELECT TOP (2)
	Stuff([t].[Sku], 1, 1, N'') || Coalesce(@suffix, N'')
FROM
	[SplitVarCharRow] [t]

