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
	[s].[ValueStr] || CAST(100 AS NVarChar(11))
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3
RETURNING
	[DestinationTable].[Id] + 1,
	[DestinationTable].[ValueStr] || CAST(1 AS NVarChar(11))

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[DestinationTable] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id] + 1,
	[t].[ValueStr] || CAST(1 AS NVarChar(11))
FROM
	[DestinationTable] [t]

