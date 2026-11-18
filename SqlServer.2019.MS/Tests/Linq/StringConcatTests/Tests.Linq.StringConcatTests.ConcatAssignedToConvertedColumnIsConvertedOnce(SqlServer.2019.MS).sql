-- SqlServer.2019.MS SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'x:'
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'-s'

UPDATE
	[ConvertedTargetRow]
SET
	[Conv] = Coalesce(@p, N'') + [ConvertedTargetRow].[Sku] + Coalesce(@suffix, N'')

-- SqlServer.2019.MS SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[Conv]
FROM
	[ConvertedTargetRow] [t1]

