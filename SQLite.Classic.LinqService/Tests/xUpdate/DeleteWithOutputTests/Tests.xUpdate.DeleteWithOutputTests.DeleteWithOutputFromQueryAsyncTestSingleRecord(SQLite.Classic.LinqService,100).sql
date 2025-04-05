BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @param  -- Int32
SET     @param = 100

DELETE FROM
	[TableWithData]
WHERE
	[TableWithData].[Id] = 3
RETURNING
	[TableWithData].[Id] + @param,
	[TableWithData].[Value] + @param,
	[TableWithData].[ValueStr] || @param

