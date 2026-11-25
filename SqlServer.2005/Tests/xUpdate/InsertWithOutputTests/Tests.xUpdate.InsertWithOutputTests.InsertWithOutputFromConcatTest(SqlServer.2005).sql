-- SqlServer.2005
INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
OUTPUT
	INSERTED.[Id],
	INSERTED.[Value],
	INSERTED.[ValueStr]
SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] <= 2
UNION ALL
SELECT
	[s_1].[Id],
	[s_1].[Value],
	[s_1].[ValueStr]
FROM
	[TableWithData] [s_1]
WHERE
	[s_1].[Id] >= 9

-- SqlServer.2005
SELECT
	COUNT(*)
FROM
	[DestinationTable] [t1]

