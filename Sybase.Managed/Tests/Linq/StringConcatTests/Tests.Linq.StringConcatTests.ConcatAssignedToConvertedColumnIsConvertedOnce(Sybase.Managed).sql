-- Sybase.Managed Sybase
DECLARE @p UniVarChar(2) -- String
SET     @p = 'x:'
DECLARE @suffix UniVarChar(2) -- String
SET     @suffix = '-s'

UPDATE
	[ConvertedTargetRow]
SET
	[Conv] = Coalesce(@p, '') || [ConvertedTargetRow].[Sku] || Coalesce(@suffix, '')

-- Sybase.Managed Sybase
SELECT TOP 2
	[t1].[Id],
	[t1].[Conv]
FROM
	[ConvertedTargetRow] [t1]

