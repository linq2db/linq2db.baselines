BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [sample_table_temp]
(
	[id]    INTEGER NOT NULL,
	[value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [sample_table_temp]
(
	[id],
	[value]
)
VALUES
(1,2),
(3,2)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @z  -- Int32
SET     @z = 0

SELECT
	Count(*)
FROM
	[sample_table_temp] [t]
WHERE
	[t].[id] BETWEEN @z AND [value]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [sample_table_temp]

