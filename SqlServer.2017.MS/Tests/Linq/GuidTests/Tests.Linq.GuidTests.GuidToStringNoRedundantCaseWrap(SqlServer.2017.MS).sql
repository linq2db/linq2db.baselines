-- SqlServer.2017.MS SqlServer.2017

SELECT
	Lower(CAST([t].[Id] AS Char(36)))
FROM
	[TableWithGuid] [t]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS Char(36))) = N'x'

