BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[DestinationTable]
SET
	[Id] = [t1].[Id],
	[Value] = [t1].[Value],
	[ValueStr] = [t1].[ValueStr]
FROM
	[TableWithData] [t1]
WHERE
	[t1].[Id] = 3 AND [DestinationTable].[Id] = [t1].[Id]
RETURNING
	[DestinationTable].[Value]

