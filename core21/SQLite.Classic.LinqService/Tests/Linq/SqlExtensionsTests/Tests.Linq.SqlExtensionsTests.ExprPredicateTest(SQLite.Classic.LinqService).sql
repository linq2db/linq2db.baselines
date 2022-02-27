BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [sample_table_temp]
(
	[id]    INTEGER NOT NULL,
	[value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [sample_table_temp]
(
	[id],
	[value]
)
VALUES
(1,2),
(3,2)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @z  -- Int32
SET     @z = 0

SELECT
	Count(*)
FROM
	[sample_table_temp] [t]
WHERE
	[t].[id] BETWEEN @z AND [value]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [sample_table_temp]

