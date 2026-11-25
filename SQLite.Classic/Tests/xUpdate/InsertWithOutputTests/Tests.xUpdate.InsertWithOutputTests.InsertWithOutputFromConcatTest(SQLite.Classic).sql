-- SQLite.Classic SQLite
INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
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
RETURNING
	[DestinationTable].[Id],
	[DestinationTable].[Value],
	[DestinationTable].[ValueStr]

-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[DestinationTable] [t1]

