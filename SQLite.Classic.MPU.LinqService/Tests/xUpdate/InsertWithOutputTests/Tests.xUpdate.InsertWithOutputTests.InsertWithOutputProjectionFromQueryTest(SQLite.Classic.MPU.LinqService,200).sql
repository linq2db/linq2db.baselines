BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 200

INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
SELECT
	[s].[Id] + 100 + @param,
	[s].[Value] + 100,
	[s].[ValueStr] || 100
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3
RETURNING
	[DestinationTable].[Id] + 1,
	[DestinationTable].[ValueStr] || 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[DestinationTable] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id] + 1,
	[t].[ValueStr] || 1
FROM
	[DestinationTable] [t]

