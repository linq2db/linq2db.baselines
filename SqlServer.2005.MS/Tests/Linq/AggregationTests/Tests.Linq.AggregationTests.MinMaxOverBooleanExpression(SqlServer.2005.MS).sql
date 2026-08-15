-- SqlServer.2005.MS SqlServer.2005
SELECT
	MAX(CASE
		WHEN [t1].[Id] = 2 THEN 1
		ELSE 0
	END)
FROM
	[Item] [t1]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	MIN(CASE
		WHEN [t1].[Id] = 2 THEN 1
		ELSE 0
	END)
FROM
	[Item] [t1]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	MAX(CASE
		WHEN [t1].[Id] = 2 THEN 1
		ELSE 0
	END)
FROM
	[Item] [t1]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	MIN(CASE
		WHEN [t1].[Id] = 2 THEN 1
		ELSE 0
	END)
FROM
	[Item] [t1]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	MAX(CASE
		WHEN [t1].[Id] = 2 OR [t1].[Id] > 1 THEN 1
		ELSE 0
	END)
FROM
	[Item] [t1]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	MIN(CASE
		WHEN [t1].[Id] = 2 OR [t1].[Id] > 1 THEN 1
		ELSE 0
	END)
FROM
	[Item] [t1]

