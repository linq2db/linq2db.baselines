-- SqlServer.CS SqlServer.2025
SELECT TOP (1)
	Lower(CAST([t].[Id] AS Char(36)))
FROM
	[TableWithGuid] [t]

-- SqlServer.CS SqlServer.2025
SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS Char(36))) LIKE N'%63d-0f%' ESCAPE N'~'

-- SqlServer.CS SqlServer.2025
SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS Char(36))) LIKE N'bc7b6%' ESCAPE N'~'

-- SqlServer.CS SqlServer.2025
SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS Char(36))) LIKE N'%8f4-53%' ESCAPE N'~'

-- SqlServer.CS SqlServer.2025
SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS Char(36))) LIKE N'8f4-53%' ESCAPE N'~'

