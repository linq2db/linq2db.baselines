-- SqlServer.SA.MS SqlServer.2019
SELECT
	MAX(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- SqlServer.SA.MS SqlServer.2019
SELECT
	MIN(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- SqlServer.SA.MS SqlServer.2019
SELECT
	MAX(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- SqlServer.SA.MS SqlServer.2019
SELECT
	MIN(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- SqlServer.SA.MS SqlServer.2019
SELECT
	MAX(IIF([t1].[Id] = 2 OR [t1].[Id] > 1, 1, 0))
FROM
	[Item] [t1]

-- SqlServer.SA.MS SqlServer.2019
SELECT
	MIN(IIF([t1].[Id] = 2 OR [t1].[Id] > 1, 1, 0))
FROM
	[Item] [t1]

