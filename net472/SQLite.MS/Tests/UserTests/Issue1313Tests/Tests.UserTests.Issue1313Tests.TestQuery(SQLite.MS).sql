BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ValueItem]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ValueItem]
(
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [ValueItem]
(
	[Value]
)
VALUES
(
	123
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[row_1].[Value]
FROM
	[ValueItem] [row_1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ValueItem]

