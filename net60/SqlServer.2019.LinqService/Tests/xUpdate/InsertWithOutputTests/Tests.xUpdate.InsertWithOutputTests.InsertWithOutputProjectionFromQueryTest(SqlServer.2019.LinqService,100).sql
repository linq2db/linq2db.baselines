﻿BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2019
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
-- SqlServer.2019
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
-- SqlServer.2019
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
-- SqlServer.2019
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
-- SqlServer.2019
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
-- SqlServer.2019
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
-- SqlServer.2019
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
-- SqlServer.2019
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
-- SqlServer.2019
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
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = -10
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
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[DestinationTable]', N'U') IS NULL)
	CREATE TABLE [DestinationTable]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 200

INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
OUTPUT
	[INSERTED].[Id] + 1,
	[INSERTED].[ValueStr] + Convert(VarChar(11), 1)
SELECT
	[s].[Id] + @param,
	[s].[Value] + 100,
	[s].[ValueStr] + Convert(VarChar(11), 100)
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[DestinationTable] [t1]

BeforeExecute
-- SqlServer.2019

SELECT
	[t].[Id],
	[t].[ValueStr]
FROM
	[DestinationTable] [t]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TableWithData]

