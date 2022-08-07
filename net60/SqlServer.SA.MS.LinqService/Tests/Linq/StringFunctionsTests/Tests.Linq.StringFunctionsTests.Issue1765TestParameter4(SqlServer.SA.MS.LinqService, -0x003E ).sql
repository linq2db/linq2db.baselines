﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]     Int          NOT NULL,
		[Value1] NVarChar(50)     NULL,
		[Value2] NVarChar(50)     NULL,
		[Value3] VarChar(50)      NULL,
		[Value4] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value1 NVarChar(50) -- String
SET     @Value1 = N'V1'
DECLARE @Value2 NVarChar(50) -- String
SET     @Value2 = N'V2'
DECLARE @Value3 VarChar(50) -- AnsiString
SET     @Value3 = NULL
DECLARE @Value4 NVarChar(50) -- String
SET     @Value4 = N'V4'

INSERT INTO [SampleClass]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4]
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value1 NVarChar(50) -- String
SET     @Value1 = NULL
DECLARE @Value2 NVarChar(50) -- String
SET     @Value2 = N'Z2'
DECLARE @Value3 VarChar(50) -- AnsiString
SET     @Value3 = NULL
DECLARE @Value4 NVarChar(50) -- String
SET     @Value4 = NULL

INSERT INTO [SampleClass]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4]
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value1 NVarChar(50) -- String
SET     @Value1 = N'Z1'
DECLARE @Value2 NVarChar(50) -- String
SET     @Value2 = NULL
DECLARE @Value3 VarChar(50) -- AnsiString
SET     @Value3 = NULL
DECLARE @Value4 NVarChar(50) -- String
SET     @Value4 = N'Z4'

INSERT INTO [SampleClass]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4]
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @separator NVarChar(4000) -- String
SET     @separator = N' -> '

SELECT
	Max([t1].[Value4]),
	STRING_AGG([t1].[Value4], @separator)
FROM
	[SampleClass] [t1]
GROUP BY
	[t1].[Id],
	[t1].[Value4]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]

