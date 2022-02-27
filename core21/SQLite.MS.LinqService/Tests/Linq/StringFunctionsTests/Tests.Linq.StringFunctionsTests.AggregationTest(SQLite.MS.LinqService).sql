BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [SampleClass]
(
	[Id]     INTEGER      NOT NULL,
	[Value1] NVarChar(50)     NULL,
	[Value2] NVarChar(50)     NULL,
	[Value3] NVarChar(50)     NULL,
	[Value4] VarChar(50)      NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SampleClass]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4]
)
VALUES
(1,'V1','V2',NULL,'V4'),
(2,NULL,'Z2',NULL,NULL),
(3,'Z1',NULL,NULL,'Z4')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Max([t1].[Value1]),
	GROUP_CONCAT([t1].[Value1], ' -> ')
FROM
	[SampleClass] [t1]
GROUP BY
	[t1].[Id],
	[t1].[Value1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [SampleClass]

