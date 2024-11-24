BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TableWithData]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(1,-1,'Str1'),
(2,-2,'Str2'),
(3,-3,'Str3'),
(4,-4,'Str4'),
(5,-5,'Str5'),
(6,-6,'Str6'),
(7,-7,'Str7'),
(8,-8,'Str8'),
(9,-9,'Str9'),
(10,-10,'Str10')

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DestinationTable]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
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
	[s].[ValueStr] || @param
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3
RETURNING
	[DestinationTable].[Id],
	[DestinationTable].[Value],
	[DestinationTable].[ValueStr]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 200

SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	[s].[ValueStr] || @param
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

