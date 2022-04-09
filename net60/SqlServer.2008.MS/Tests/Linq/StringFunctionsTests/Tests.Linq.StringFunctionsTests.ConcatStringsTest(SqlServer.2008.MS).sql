﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NOT NULL)
	DROP TABLE [SampleClass]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

SELECT
	ISNULL([t].[Value2], '')
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	ISNULL([t].[Value3], '')
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	SUBSTRING(((ISNULL((N' -> ' + [t].[Value3]), '') + ISNULL((N' -> ' + [t].[Value1]), '')) + ISNULL((N' -> ' + [t].[Value2]), '')), LEN(CONVERT(NVARCHAR(MAX), N' -> ') + N'!'), 8000)
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	SUBSTRING((ISNULL((N' -> ' + [t].[Value3]), '') + ISNULL((N' -> ' + [t].[Value3]), '')), LEN(CONVERT(NVARCHAR(MAX), N' -> ') + N'!'), 8000)
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NOT NULL)
	DROP TABLE [SampleClass]

