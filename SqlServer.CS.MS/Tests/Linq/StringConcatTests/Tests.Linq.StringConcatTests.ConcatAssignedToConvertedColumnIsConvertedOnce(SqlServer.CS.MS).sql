-- SqlServer.CS.MS SqlServer.2025
DECLARE @p NVarChar(4000) -- String
SET     @p = N'x:'
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'-s'

UPDATE
	[ConvertedTargetRow]
SET
	[Conv] = Coalesce(@p, N'') || CAST([ConvertedTargetRow].[Sku] AS NVarChar(Max)) || Coalesce(@suffix, N'')

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (2)
	[t1].[Id],
	[t1].[Conv]
FROM
	[ConvertedTargetRow] [t1]

