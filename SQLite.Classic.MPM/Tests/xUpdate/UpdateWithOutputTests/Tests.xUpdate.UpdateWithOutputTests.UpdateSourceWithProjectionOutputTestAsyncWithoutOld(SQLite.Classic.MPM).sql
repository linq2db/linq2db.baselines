BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

UPDATE
	[TableWithData]
SET
	[Value] = [TableWithData].[Value] + 1,
	[ValueStr] = [TableWithData].[ValueStr] || 'Upd'
WHERE
	[TableWithData].[Id] > 3
RETURNING
	[TableWithData].[Value]

