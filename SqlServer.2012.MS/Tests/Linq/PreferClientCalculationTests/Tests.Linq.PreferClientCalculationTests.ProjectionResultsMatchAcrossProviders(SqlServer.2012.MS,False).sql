-- SqlServer.2012.MS SqlServer.2012

SELECT
	[e].[Id],
	[e].[Value1] + 12345
FROM
	[ClientCalcEntity] [e]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	IIF([e].[Id] > 1, [e].[Value1], [e].[Value2])
FROM
	[ClientCalcEntity] [e]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	-[e].[Value1]
FROM
	[ClientCalcEntity] [e]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[e].[Value1] + ABS([e].[Value2])
FROM
	[ClientCalcEntity] [e]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

