BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022

SELECT
	STRING_AGG([g_1].[Value4], N' -> ') WITHIN GROUP (ORDER BY [g_1].[Value3] DESC, [g_1].[Value4])
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id],
	[g_1].[Value4]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [SampleClass]

