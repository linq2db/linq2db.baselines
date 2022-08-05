﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP,1 || ' Day'),
	strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP,2 || ' Day')
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

