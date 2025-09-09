BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value],
	N'M' + CAST([t1].[Id] AS NVarChar(11))
FROM
	[InstanceClass] [t1]

