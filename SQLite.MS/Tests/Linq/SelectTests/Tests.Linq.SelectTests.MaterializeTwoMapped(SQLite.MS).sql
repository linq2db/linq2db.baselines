BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [test_mapping_column_2_prop]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [test_mapping_column_2_prop]
(
	[id]          BigInt NOT NULL,
	[test_number] BigInt NOT NULL,

	CONSTRAINT [PK_test_mapping_column_2_prop] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [test_mapping_column_2_prop]
(
	[id],
	[test_number]
)
VALUES
(1,3)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[test_number],
	[t1].[test_number],
	[t1].[test_number],
	[t1].[id]
FROM
	[test_mapping_column_2_prop] [t1]
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [test_mapping_column_2_prop]

