BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NullableBoolClass]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [NullableBoolClass]
(
	[Value] Bit     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [NullableBoolClass]
(
	[Value]
)
VALUES
(NULL),
(1),
(0)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 1 OR [t].[Value] IS NULL

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NullableBoolClass]

