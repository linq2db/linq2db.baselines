﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]     INTEGER      NOT NULL,
	[Value1] NVarChar(50)     NULL,
	[Value2] NVarChar(50)     NULL,
	[Value3] VarChar(50)      NULL,
	[Value4] NVarChar(50)     NULL
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
	GROUP_CONCAT([t1].[Value4], ' -> ')
FROM
	[SampleClass] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

