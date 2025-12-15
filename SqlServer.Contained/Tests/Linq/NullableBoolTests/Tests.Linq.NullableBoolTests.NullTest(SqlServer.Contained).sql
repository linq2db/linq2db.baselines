-- SqlServer.Contained SqlServer.2019

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] IS NULL

-- SqlServer.Contained SqlServer.2019

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] IS NOT NULL

