BeforeExecute
-- SqlServer.2017

CREATE TABLE [SampleClass]
(
	[Id]     Int          NOT NULL,
	[Value1] NVarChar(50)     NULL,
	[Value2] NVarChar(50)     NULL,
	[Value3] NVarChar(50)     NULL,
	[Value4] VarChar(50)      NULL
)

BeforeExecute
-- SqlServer.2017

INSERT INTO [SampleClass]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4]
)
VALUES
(1,N'V1',N'V2',NULL,'V4'),
(2,NULL,N'Z2',NULL,NULL),
(3,N'Z1',NULL,NULL,'Z4')

BeforeExecute
-- SqlServer.2017

SELECT
	STRING_AGG([t1].[Value4], ' -> ') WITHIN GROUP (ORDER BY [t1].[Value4], [t1].[Value3] DESC)
FROM
	[SampleClass] [t1]
GROUP BY
	[t1].[Id],
	[t1].[Value4]

BeforeExecute
-- SqlServer.2017

DROP TABLE [SampleClass]

