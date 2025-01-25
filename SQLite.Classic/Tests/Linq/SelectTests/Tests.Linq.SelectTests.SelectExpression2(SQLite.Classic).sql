BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SelectExpressionTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SelectExpressionTable]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	1
FROM
	[SelectExpressionTable] [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SelectExpressionTable]

