BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [sample_table_temp]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [sample_table_temp]
(
	[id]    INTEGER NOT NULL,
	[value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- Int32
SET     @Value = 2

INSERT INTO [sample_table_temp]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Value  -- Int32
SET     @Value = 2

INSERT INTO [sample_table_temp]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @z  -- Int32
SET     @z = 0

SELECT
	COUNT(*)
FROM
	[sample_table_temp] [t]
WHERE
	[t].[id] BETWEEN @z AND [value]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [sample_table_temp]

