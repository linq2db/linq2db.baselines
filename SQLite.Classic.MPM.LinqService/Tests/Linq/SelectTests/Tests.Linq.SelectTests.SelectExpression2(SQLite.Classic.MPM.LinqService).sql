﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SelectExpressionTable]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SelectExpressionTable]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p  -- Guid
SET     @p = X'1CB5D9B3F9892A44893BCD8A6F667D37'
DECLARE @p_1  -- Guid
SET     @p_1 = X'D4DCEF619D65E841910C506A9C2F31C5'
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	CASE
		WHEN (@p <> @p_1 OR @p IS NULL AND @p_1 IS NOT NULL OR @p IS NOT NULL AND @p_1 IS NULL)
			THEN 1
		ELSE 0
	END
FROM
	[SelectExpressionTable] [_]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SelectExpressionTable]

