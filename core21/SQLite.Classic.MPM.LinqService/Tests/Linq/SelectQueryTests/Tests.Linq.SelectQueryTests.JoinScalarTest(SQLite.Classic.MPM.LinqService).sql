﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,100)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[Value],
	[s].[c1]
FROM
	[SampleClass] [t]
		INNER JOIN (
			SELECT
				1 as [c1]
		) [s] ON [s].[c1] = [t].[Id]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [SampleClass]

