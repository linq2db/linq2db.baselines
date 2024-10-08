BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NullableBoolClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [NullableBoolClass]
(
	[Value] Bit     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value  -- Boolean
SET     @Value = NULL

INSERT INTO [NullableBoolClass]
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
SET     @Value = 1

INSERT INTO [NullableBoolClass]
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

INSERT INTO [NullableBoolClass]
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
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 1 OR [t].[Value] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NullableBoolClass]

