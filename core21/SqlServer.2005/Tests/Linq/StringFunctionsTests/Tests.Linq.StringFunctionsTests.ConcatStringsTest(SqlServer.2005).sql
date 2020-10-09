BeforeExecute
-- SqlServer.2005

CREATE TABLE [SampleClass]
(
	[Id]     Int          NOT NULL,
	[Value1] NVarChar(50)     NULL,
	[Value2] NVarChar(50)     NULL,
	[Value3] NVarChar(50)     NULL,
	[Value4] VarChar(50)      NULL
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [SampleClass]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4]
)
SELECT 1,N'V1',N'V2',NULL,'V4' UNION ALL
SELECT 2,NULL,N'Z2',NULL,NULL UNION ALL
SELECT 3,N'Z1',NULL,NULL,'Z4'

BeforeExecute
-- SqlServer.2005

SELECT 
	ISNULL([t].[Value2], '')
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlServer.2005

SELECT 
	ISNULL([t].[Value3], '')
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlServer.2005

SELECT 
	SUBSTRING(((ISNULL((N' -> ' + [t].[Value3]), '') + ISNULL((N' -> ' + [t].[Value1]), '')) + ISNULL((N' -> ' + [t].[Value2]), '')), LEN(CONVERT(NVARCHAR(MAX), N' -> ') + N'!'), 8000)
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlServer.2005

SELECT 
	SUBSTRING((ISNULL((N' -> ' + [t].[Value3]), '') + ISNULL((N' -> ' + [t].[Value3]), '')), LEN(CONVERT(NVARCHAR(MAX), N' -> ') + N'!'), 8000)
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlServer.2005

DROP TABLE [SampleClass]

