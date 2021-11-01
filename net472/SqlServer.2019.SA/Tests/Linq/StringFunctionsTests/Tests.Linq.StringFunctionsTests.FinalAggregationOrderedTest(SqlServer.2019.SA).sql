﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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
-- SqlServer.2019.SA SqlServer.2017

INSERT INTO [SampleClass]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4]
)
VALUES
(1,N'V1',N'V2',NULL,N'V4'),
(2,NULL,N'Z2',NULL,NULL),
(3,N'Z1',NULL,NULL,N'Z4')

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	STRING_AGG([t1].[Value1], N' -> ') WITHIN GROUP (ORDER BY [t1].[Value1])
FROM
	(
		SELECT
			[t].[Value1]
		FROM
			[SampleClass] [t]
	) [t1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	STRING_AGG([t1].[Value1], N' -> ') WITHIN GROUP (ORDER BY [t1].[Value1])
FROM
	(
		SELECT
			[t].[Value1]
		FROM
			[SampleClass] [t]
	) [t1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	STRING_AGG([t1].[Value1], N' -> ') WITHIN GROUP (ORDER BY [t1].[Value1] DESC)
FROM
	(
		SELECT
			[t].[Value1]
		FROM
			[SampleClass] [t]
	) [t1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	STRING_AGG([t1].[Value1], N' -> ') WITHIN GROUP (ORDER BY [t1].[Value1] DESC)
FROM
	(
		SELECT
			[t].[Value1]
		FROM
			[SampleClass] [t]
	) [t1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [SampleClass]

