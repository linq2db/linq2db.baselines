BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue681Table4]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue681Table4]
(
	[ID]    INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value  -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue681Table4]

