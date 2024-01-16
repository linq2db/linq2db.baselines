﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	(
		SELECT
			COUNT(DISTINCT [t1].[Value1])
		FROM
			[SampleClass] [t1]
	),
	(
		SELECT
			STRING_AGG([t2].[Value1], N' -> ')
		FROM
			[SampleClass] [t2]
	)
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]

