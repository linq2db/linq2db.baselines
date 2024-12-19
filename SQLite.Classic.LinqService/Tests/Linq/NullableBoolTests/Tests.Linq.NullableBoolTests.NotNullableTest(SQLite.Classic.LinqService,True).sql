BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NotNullableBoolClass]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [NotNullableBoolClass]
(
	[Value] Bit NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	NOT [t].[Value]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NotNullableBoolClass]

