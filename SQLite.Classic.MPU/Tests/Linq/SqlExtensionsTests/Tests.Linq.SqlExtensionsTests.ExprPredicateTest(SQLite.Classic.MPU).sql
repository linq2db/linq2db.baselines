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

INSERT INTO [sample_table_temp]
(
	[id],
	[value]
)
VALUES
(1,2),
(3,2)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 0

SELECT
	COUNT(*)
FROM
	[sample_table_temp] [t]
WHERE
	[t].[id] BETWEEN @p AND [value]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [sample_table_temp]

