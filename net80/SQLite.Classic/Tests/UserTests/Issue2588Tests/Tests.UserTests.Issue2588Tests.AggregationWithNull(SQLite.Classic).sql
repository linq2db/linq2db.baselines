﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestClass]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TestClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	Max([x].[Value])
FROM
	[TestClass] [x]
WHERE
	[x].[Id] = 0

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	Max([x].[Value])
FROM
	[TestClass] [x]
WHERE
	[x].[Id] = 0

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	Max(CASE
		WHEN [d].[Value] IS NOT NULL
			THEN [d].[Value]
		ELSE 0
	END)
FROM
	(
		SELECT
			0 as [c1]
	) [t1]
		LEFT JOIN [TestClass] [d] ON [d].[Id] = 0

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	Max(CASE
		WHEN [d].[Value] IS NOT NULL
			THEN [d].[Value]
		ELSE 5
	END)
FROM
	(
		SELECT
			5 as [c1]
	) [t1]
		LEFT JOIN [TestClass] [d] ON [d].[Id] = 0

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestClass]

