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
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- Int32
SET     @Value = -1
DECLARE @ValueStr NVarChar(4) -- String
SET     @ValueStr = 'Str1'

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value  -- Int32
SET     @Value = -2
DECLARE @ValueStr NVarChar(4) -- String
SET     @ValueStr = 'Str2'

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Value  -- Int32
SET     @Value = -3
DECLARE @ValueStr NVarChar(4) -- String
SET     @ValueStr = 'Str3'

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Value  -- Int32
SET     @Value = -4
DECLARE @ValueStr NVarChar(4) -- String
SET     @ValueStr = 'Str4'

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Value  -- Int32
SET     @Value = -5
DECLARE @ValueStr NVarChar(4) -- String
SET     @ValueStr = 'Str5'

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Value  -- Int32
SET     @Value = -6
DECLARE @ValueStr NVarChar(4) -- String
SET     @ValueStr = 'Str6'

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 7
DECLARE @Value  -- Int32
SET     @Value = -7
DECLARE @ValueStr NVarChar(4) -- String
SET     @ValueStr = 'Str7'

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 8
DECLARE @Value  -- Int32
SET     @Value = -8
DECLARE @ValueStr NVarChar(4) -- String
SET     @ValueStr = 'Str8'

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 9
DECLARE @Value  -- Int32
SET     @Value = -9
DECLARE @ValueStr NVarChar(4) -- String
SET     @ValueStr = 'Str9'

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @Value  -- Int32
SET     @Value = -10
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = 'Str10'

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

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
-- SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 100
DECLARE @param_1  -- Int32
SET     @param_1 = 100

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
-- SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 100
DECLARE @param_1  -- Int32
SET     @param_1 = 100

SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	[s].[ValueStr] || @param_1
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

