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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- Int32
SET     @Value = 0
DECLARE @ValueStr NVarChar(4) -- String
SET     @ValueStr = '0Dst'

INSERT INTO [DestinationTable]
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value  -- Int32
SET     @Value = -1
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = '-1Dst'

INSERT INTO [DestinationTable]
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Value  -- Int32
SET     @Value = -2
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = '-2Dst'

INSERT INTO [DestinationTable]
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Value  -- Int32
SET     @Value = -3
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = '-3Dst'

INSERT INTO [DestinationTable]
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Value  -- Int32
SET     @Value = -4
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = '-4Dst'

INSERT INTO [DestinationTable]
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Value  -- Int32
SET     @Value = -5
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = '-5Dst'

INSERT INTO [DestinationTable]
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 7
DECLARE @Value  -- Int32
SET     @Value = -6
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = '-6Dst'

INSERT INTO [DestinationTable]
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 8
DECLARE @Value  -- Int32
SET     @Value = -7
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = '-7Dst'

INSERT INTO [DestinationTable]
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 9
DECLARE @Value  -- Int32
SET     @Value = -8
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = '-8Dst'

INSERT INTO [DestinationTable]
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
-- SQLite.MS SQLite

UPDATE
	[DestinationTable]
SET
	[Id] = [t1].[Id],
	[Value] = [t1].[Value],
	[ValueStr] = [t1].[ValueStr]
FROM
	[TableWithData] [t1]
WHERE
	[t1].[Id] = 3 AND [DestinationTable].[Id] = [t1].[Id]
RETURNING
	[DestinationTable].[Value]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableWithData]

