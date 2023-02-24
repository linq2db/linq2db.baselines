BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -1
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -2
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -3
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -4
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -5
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -6
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -7
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 8
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -8
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 9
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -9
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[DestinationTable]', N'U') IS NULL)
	CREATE TABLE [DestinationTable]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 0
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -1
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -2
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -3
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -4
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -5
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -6
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 8
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -7
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 9
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -8
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TableWithData]

