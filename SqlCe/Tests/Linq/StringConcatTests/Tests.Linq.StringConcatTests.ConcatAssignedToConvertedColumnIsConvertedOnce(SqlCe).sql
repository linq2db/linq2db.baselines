-- SqlCe
DECLARE @p NVarChar(2) -- String
SET     @p = 'x:'
DECLARE @suffix NVarChar(2) -- String
SET     @suffix = '-s'

UPDATE
	[ConvertedTargetRow]
SET
	[Conv] = Coalesce(@p, '') + [ConvertedTargetRow].[Sku] + Coalesce(@suffix, '')

-- SqlCe
SELECT TOP (2)
	[t1].[Id],
	[t1].[Conv]
FROM
	[ConvertedTargetRow] [t1]

