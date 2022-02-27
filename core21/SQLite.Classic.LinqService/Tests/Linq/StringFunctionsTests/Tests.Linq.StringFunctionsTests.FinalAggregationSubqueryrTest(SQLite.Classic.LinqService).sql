BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [SampleClass]
(
	[Id]     INTEGER      NOT NULL,
	[Value1] NVarChar(50)     NULL,
	[Value2] NVarChar(50)     NULL,
	[Value3] NVarChar(50)     NULL,
	[Value4] VarChar(50)      NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	(
		SELECT
			COUNT(DISTINCT [t1].[Value1])
		FROM
			[SampleClass] [t1]
	),
	(
		SELECT
			GROUP_CONCAT([t2].[Value1], ' -> ')
		FROM
			[SampleClass] [t2]
	)
FROM
	[SampleClass] [t]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [SampleClass]

