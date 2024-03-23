BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NOT NULL)
	DROP TABLE [TableWithData]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value Int -- Int32
SET     @Value = -1
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str1'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value Int -- Int32
SET     @Value = -2
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str2'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value Int -- Int32
SET     @Value = -3
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str3'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value Int -- Int32
SET     @Value = -4
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str4'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Value Int -- Int32
SET     @Value = -5
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str5'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Value Int -- Int32
SET     @Value = -6
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str6'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @Value Int -- Int32
SET     @Value = -7
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str7'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 8
DECLARE @Value Int -- Int32
SET     @Value = -8
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str8'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 9
DECLARE @Value Int -- Int32
SET     @Value = -9
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str9'

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
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[DestinationTable]', N'U') IS NOT NULL)
	DROP TABLE [DestinationTable]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[DestinationTable]', N'U') IS NULL)
	CREATE TABLE [DestinationTable]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value Int -- Int32
SET     @Value = 0
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'0Dst'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value Int -- Int32
SET     @Value = -1
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'-1Dst'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value Int -- Int32
SET     @Value = -2
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'-2Dst'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value Int -- Int32
SET     @Value = -3
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'-3Dst'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Value Int -- Int32
SET     @Value = -4
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'-4Dst'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Value Int -- Int32
SET     @Value = -5
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'-5Dst'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @Value Int -- Int32
SET     @Value = -6
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'-6Dst'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 8
DECLARE @Value Int -- Int32
SET     @Value = -7
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'-7Dst'

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 9
DECLARE @Value Int -- Int32
SET     @Value = -8
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'-8Dst'

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
-- SqlServer.2008.MS SqlServer.2008

UPDATE
	[t]
SET
	[t].[Id] = [s].[Id],
	[t].[Value] = [s].[Value],
	[t].[ValueStr] = [s].[ValueStr]
OUTPUT
	DELETED.[Value],
	INSERTED.[Value]
FROM
	[TableWithData] [s]
		INNER JOIN [DestinationTable] [t] ON [t].[Id] = [s].[Id]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[DestinationTable]', N'U') IS NOT NULL)
	DROP TABLE [DestinationTable]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NOT NULL)
	DROP TABLE [TableWithData]

