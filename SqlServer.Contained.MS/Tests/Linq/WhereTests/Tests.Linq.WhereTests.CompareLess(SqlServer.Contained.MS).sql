-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[Id],
	[p].[NotNullable],
	[p].[Nullable],
	[p].[OtherNullable]
FROM
	[WhereCompareData] [p]
WHERE
	[p].[Nullable] < [p].[OtherNullable]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[Id],
	[p].[NotNullable],
	[p].[Nullable],
	[p].[OtherNullable]
FROM
	[WhereCompareData] [p]
WHERE
	[p].[Nullable] >= [p].[OtherNullable] OR [p].[Nullable] IS NULL OR
	[p].[OtherNullable] IS NULL

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[Id],
	[p].[NotNullable],
	[p].[Nullable],
	[p].[OtherNullable]
FROM
	[WhereCompareData] [p]
WHERE
	[p].[OtherNullable] > [p].[Nullable]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[Id],
	[p].[NotNullable],
	[p].[Nullable],
	[p].[OtherNullable]
FROM
	[WhereCompareData] [p]
WHERE
	[p].[OtherNullable] <= [p].[Nullable] OR [p].[OtherNullable] IS NULL OR
	[p].[Nullable] IS NULL

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

