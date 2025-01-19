BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE
	[DestinationTable]
SET
	[Id] = [s].[Id],
	[Value] = [s].[Value],
	[ValueStr] = [s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[DestinationTable].[Id] = [s].[Id]
RETURNING
	[DestinationTable].[Value]

