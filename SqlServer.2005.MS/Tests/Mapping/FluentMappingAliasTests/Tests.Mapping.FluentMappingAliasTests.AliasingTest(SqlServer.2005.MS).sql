-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t].[Id],
	[t].[Value],
	[t].[ValueStr]
FROM
	[InstanceClass] [t]
WHERE
	[t].[Id] > 1 AND
	[t].[Value] >= 104 AND
	[t].[Value] <= 115 AND
	[t].[ValueStr] LIKE N'S%' ESCAPE N'~'

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t].[Id],
	[t].[Value],
	[t].[ValueStr]
FROM
	[InstanceClass] [t]
WHERE
	[t].[Id] > 1 AND
	[t].[Value] >= 104 AND
	[t].[Value] <= 115 AND
	[t].[ValueStr] LIKE N'S%' ESCAPE N'~'

