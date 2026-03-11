-- Sybase.Managed Sybase

SELECT TOP 1
	Lower(CAST([t].[Id] AS NVarChar(36)))
FROM
	[TableWithGuid] [t]

-- Sybase.Managed Sybase

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NVarChar(36))) LIKE '%63d-0f%' ESCAPE '~'

-- Sybase.Managed Sybase

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NVarChar(36))) LIKE 'bc7b6%' ESCAPE '~'

-- Sybase.Managed Sybase

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NVarChar(36))) LIKE '%8f4-53%' ESCAPE '~'

-- Sybase.Managed Sybase

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NVarChar(36))) LIKE '8f4-53%' ESCAPE '~'

