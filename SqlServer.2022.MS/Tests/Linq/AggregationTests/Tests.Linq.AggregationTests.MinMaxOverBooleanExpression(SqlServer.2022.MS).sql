-- SqlServer.2022.MS SqlServer.2022
SELECT
	MAX(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	MIN(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	MAX(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	MIN(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	MAX(IIF([t1].[Id] = 2 OR [t1].[Id] > 1, 1, 0))
FROM
	[Item] [t1]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	MIN(IIF([t1].[Id] = 2 OR [t1].[Id] > 1, 1, 0))
FROM
	[Item] [t1]

