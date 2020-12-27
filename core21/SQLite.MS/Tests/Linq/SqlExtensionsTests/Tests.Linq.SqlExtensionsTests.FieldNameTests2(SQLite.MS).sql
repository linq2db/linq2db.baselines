﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [sample_table_temp]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [sample_table_temp]
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
(1,2)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	'[id]',
	'id'
FROM
	[sample_table_temp] [t]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [sample_table_temp]

