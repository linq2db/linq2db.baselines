﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue681Table4]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue681Table4]
(
	[ID]    INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value  -- Int32
SET     @Value = 10

INSERT INTO [main].[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SQLite.MS SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue681Table4]

