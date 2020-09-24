﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [SelectExpressionTable]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
VALUES
(1)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	1
FROM
	[SelectExpressionTable] [_]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [SelectExpressionTable]

