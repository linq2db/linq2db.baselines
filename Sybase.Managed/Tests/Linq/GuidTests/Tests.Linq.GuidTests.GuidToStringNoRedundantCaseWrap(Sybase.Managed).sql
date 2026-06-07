-- Sybase.Managed Sybase

SELECT
	Lower(CAST([t].[Id] AS NVarChar(36)))
FROM
	[TableWithGuid] [t]

-- Sybase.Managed Sybase

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NVarChar(36))) = 'x'

