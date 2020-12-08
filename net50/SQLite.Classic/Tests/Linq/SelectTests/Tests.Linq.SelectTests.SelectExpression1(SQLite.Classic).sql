BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [SelectExpressionTable]
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
DECLARE @p_1  -- Guid
SET     @p_1 = Cast(x'1cb5d9b3f9892a44893bcd8a6f667d37' as blob)
DECLARE @p_2  -- Guid
SET     @p_2 = Cast(x'd4dcef619d65e841910c506a9c2f31c5' as blob)
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	@p_1,
	@p_2
FROM
	[SelectExpressionTable] [_]
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [SelectExpressionTable]

