-- SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 200

INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	[s].[ValueStr] || CAST(@param AS NVarChar(11))
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3
RETURNING
	[DestinationTable].[Id],
	[DestinationTable].[Value],
	[DestinationTable].[ValueStr]

-- SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 200

SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	[s].[ValueStr] || CAST(@param AS NVarChar(11))
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

