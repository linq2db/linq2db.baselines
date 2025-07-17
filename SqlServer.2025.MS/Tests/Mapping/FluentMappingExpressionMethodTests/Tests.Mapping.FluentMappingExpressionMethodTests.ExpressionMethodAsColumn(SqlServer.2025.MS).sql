BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value],
	N'M' + CAST([t1].[Id] AS NVarChar(11))
FROM
	[InstanceClass] [t1]

