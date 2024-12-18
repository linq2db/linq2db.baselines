BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [NullableBoolClass]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [NullableBoolClass]
(
	[Value] Bit     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @value  -- Boolean
SET     @value = 0

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value AND [t].[Value] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [NullableBoolClass]

