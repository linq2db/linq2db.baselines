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
DECLARE @Value  -- Boolean
SET     @Value = 1

INSERT INTO [NotNullableBoolClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value  -- Boolean
SET     @Value = 0

INSERT INTO [NotNullableBoolClass]
(
	[Value]
)
VALUES
(
	@Value
)

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

