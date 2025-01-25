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
	[t].[Value] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	1 = 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] IS NOT NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NullableBoolClass]

