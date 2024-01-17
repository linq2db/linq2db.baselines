BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [test_insert_or_replace]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [test_insert_or_replace]
(
	[id]         INTEGER       NOT NULL,
	[name]       NVarChar(255)     NULL,
	[created_by] NVarChar(255)     NULL,
	[updated_by] NVarChar(255)     NULL,

	CONSTRAINT [PK_test_insert_or_replace] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	1
FROM
	[test_insert_or_replace] [t1]
WHERE
	[t1].[id] = 1

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [test_insert_or_replace]
(
	[id],
	[name]
)
VALUES
(
	1,
	'test'
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	1
FROM
	[test_insert_or_replace] [t1]
WHERE
	[t1].[id] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [test_insert_or_replace]

