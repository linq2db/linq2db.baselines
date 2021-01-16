BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NOT NULL)
	DROP TABLE [SampleClass]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
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

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NOT NULL)
	DROP TABLE [SampleClass]

