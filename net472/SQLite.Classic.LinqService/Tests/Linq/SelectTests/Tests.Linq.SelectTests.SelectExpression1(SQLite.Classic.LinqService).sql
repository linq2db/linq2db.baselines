BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [SelectExpressionTable]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
DECLARE @p1  -- Guid
SET     @p1 = Cast(x'1cb5d9b3f9892a44893bcd8a6f667d37' as blob)
DECLARE @p2  -- Guid
SET     @p2 = Cast(x'd4dcef619d65e841910c506a9c2f31c5' as blob)
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	@p1,
	@p2
FROM
	[SelectExpressionTable] [_]
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [SelectExpressionTable]

