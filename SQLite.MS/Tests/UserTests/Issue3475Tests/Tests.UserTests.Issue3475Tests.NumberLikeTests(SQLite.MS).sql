BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NumberLikeTestTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [NumberLikeTestTable]
(
	[IntNProp] INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 50

SELECT
	[x].[IntNProp]
FROM
	[NumberLikeTestTable] [x]
WHERE
	CAST([x].[IntNProp] AS NVarChar(11)) LIKE '1%'
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 50

SELECT
	[x].[IntNProp]
FROM
	[NumberLikeTestTable] [x]
WHERE
	CAST([x].[IntNProp] AS NVarChar(11)) LIKE '1%'
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NumberLikeTestTable]

