BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
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
-- SqlServer.2022.MS SqlServer.2022
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
-- SqlServer.2022.MS SqlServer.2022
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
-- SqlServer.2022.MS SqlServer.2022
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
-- SqlServer.2022.MS SqlServer.2022
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
-- SqlServer.2022.MS SqlServer.2022
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
-- SqlServer.2022.MS SqlServer.2022
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
-- SqlServer.2022.MS SqlServer.2022
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
-- SqlServer.2022.MS SqlServer.2022
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
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @Value Int -- Int32
SET     @Value = -10
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str10'

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
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[DestinationTable]', N'U') IS NULL)
	CREATE TABLE [DestinationTable]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @param Int -- Int32
SET     @param = 100

INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
OUTPUT
	INSERTED.[Id] + 1,
	INSERTED.[ValueStr] + CAST(1 AS VarChar(11))
SELECT
	[s].[Id] + 100 + @param,
	[s].[Value] + 100,
	[s].[ValueStr] + CAST(100 AS VarChar(11))
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[DestinationTable] [t1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[Id] + 1,
	[t].[ValueStr] + CAST(1 AS VarChar(11))
FROM
	[DestinationTable] [t]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TableWithData]

