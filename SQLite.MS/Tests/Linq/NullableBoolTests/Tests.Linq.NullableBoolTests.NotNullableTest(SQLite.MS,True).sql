BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NotNullableBoolClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [NotNullableBoolClass]
(
	[Value] Bit NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [NotNullableBoolClass]
(
	[Value]
)
VALUES
(1),
(0)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	NOT [t].[Value]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NotNullableBoolClass]

