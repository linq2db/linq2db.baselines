-- SQLite.Classic SQLite

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

-- SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 200

DELETE FROM
	[TableWithData]
WHERE
	[TableWithData].[Id] = 3
RETURNING
	[TableWithData].[Id] + @param,
	[TableWithData].[Value] + @param,
	[TableWithData].[ValueStr] || @param

