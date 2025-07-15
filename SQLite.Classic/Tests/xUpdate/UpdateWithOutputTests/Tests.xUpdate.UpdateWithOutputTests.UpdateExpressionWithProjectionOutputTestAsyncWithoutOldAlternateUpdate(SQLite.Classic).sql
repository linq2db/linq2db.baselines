BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

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

