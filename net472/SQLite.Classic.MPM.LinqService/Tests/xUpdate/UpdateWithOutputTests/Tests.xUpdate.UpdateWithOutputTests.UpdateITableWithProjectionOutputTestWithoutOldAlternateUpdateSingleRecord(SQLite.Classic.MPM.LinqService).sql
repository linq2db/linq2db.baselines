BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TableWithData]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value_1  -- Int32
SET     @Value_1 = -1
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value_1  -- Int32
SET     @Value_1 = -2
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Value_1  -- Int32
SET     @Value_1 = -3
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Value_1  -- Int32
SET     @Value_1 = -4
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Value_1  -- Int32
SET     @Value_1 = -5
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Value_1  -- Int32
SET     @Value_1 = -6
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 7
DECLARE @Value_1  -- Int32
SET     @Value_1 = -7
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 8
DECLARE @Value_1  -- Int32
SET     @Value_1 = -8
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 9
DECLARE @Value_1  -- Int32
SET     @Value_1 = -9
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DestinationTable]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value_1  -- Int32
SET     @Value_1 = 0
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value_1  -- Int32
SET     @Value_1 = -1
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Value_1  -- Int32
SET     @Value_1 = -2
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Value_1  -- Int32
SET     @Value_1 = -3
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Value_1  -- Int32
SET     @Value_1 = -4
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Value_1  -- Int32
SET     @Value_1 = -5
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 7
DECLARE @Value_1  -- Int32
SET     @Value_1 = -6
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 8
DECLARE @Value_1  -- Int32
SET     @Value_1 = -7
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 9
DECLARE @Value_1  -- Int32
SET     @Value_1 = -8
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[DestinationTable]
SET
	[Id] = (
		SELECT
			[_].[Id]
		FROM
			[TableWithData] [_]
				INNER JOIN [DestinationTable] [t] ON [t].[Id] = [_].[Id]
		WHERE
			[_].[Id] = 3 AND
			[DestinationTable].[Id] = [t].[Id] AND
			[DestinationTable].[Value] = [t].[Value] AND
			([DestinationTable].[ValueStr] = [t].[ValueStr] OR [DestinationTable].[ValueStr] IS NULL AND [t].[ValueStr] IS NULL)
	),
	[Value] = (
		SELECT
			[_1].[Value]
		FROM
			[TableWithData] [_1]
				INNER JOIN [DestinationTable] [t_1] ON [t_1].[Id] = [_1].[Id]
		WHERE
			[_1].[Id] = 3 AND
			[DestinationTable].[Id] = [t_1].[Id] AND
			[DestinationTable].[Value] = [t_1].[Value] AND
			([DestinationTable].[ValueStr] = [t_1].[ValueStr] OR [DestinationTable].[ValueStr] IS NULL AND [t_1].[ValueStr] IS NULL)
	),
	[ValueStr] = (
		SELECT
			[_2].[ValueStr]
		FROM
			[TableWithData] [_2]
				INNER JOIN [DestinationTable] [t_2] ON [t_2].[Id] = [_2].[Id]
		WHERE
			[_2].[Id] = 3 AND
			[DestinationTable].[Id] = [t_2].[Id] AND
			[DestinationTable].[Value] = [t_2].[Value] AND
			([DestinationTable].[ValueStr] = [t_2].[ValueStr] OR [DestinationTable].[ValueStr] IS NULL AND [t_2].[ValueStr] IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TableWithData] [_3]
				INNER JOIN [DestinationTable] [t_3] ON [t_3].[Id] = [_3].[Id]
		WHERE
			[_3].[Id] = 3 AND
			[DestinationTable].[Id] = [t_3].[Id] AND
			[DestinationTable].[Value] = [t_3].[Value] AND
			([DestinationTable].[ValueStr] = [t_3].[ValueStr] OR [DestinationTable].[ValueStr] IS NULL AND [t_3].[ValueStr] IS NULL)
	)
RETURNING
	[DestinationTable].[Value]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

