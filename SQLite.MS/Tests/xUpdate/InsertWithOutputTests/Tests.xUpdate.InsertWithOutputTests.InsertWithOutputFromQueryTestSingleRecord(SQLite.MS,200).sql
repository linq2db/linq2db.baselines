BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TableWithData]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [DestinationTable]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @param  -- Int32
SET     @param = 200
DECLARE @param_1  -- Int32
SET     @param_1 = 200

INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	[s].[ValueStr] || @param_1
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3
RETURNING
	[DestinationTable].[Id],
	[DestinationTable].[Value],
	[DestinationTable].[ValueStr]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 200
DECLARE @Value  -- Int32
SET     @Value = 200
DECLARE @p  -- Int32
SET     @p = 200

SELECT
	[s].[Id] + @Id,
	[s].[Value] + @Value,
	[s].[ValueStr] || @p
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableWithData]

