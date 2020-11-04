BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SelectExpressionTable]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @p1  -- Guid
SET     @p1 = X'1CB5D9B3F9892A44893BCD8A6F667D37'
DECLARE @p2  -- Guid
SET     @p2 = X'D4DCEF619D65E841910C506A9C2F31C5'
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	@p1,
	@p2
FROM
	[SelectExpressionTable] [_]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SelectExpressionTable]

