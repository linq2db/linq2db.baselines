BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [NumberLikeTestTable]
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
	CASE
		WHEN [x].[IntNProp] IS NULL
			THEN ''
		ELSE Cast([x].[IntNProp] as NVarChar(11))
	END LIKE '1%'
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
	CASE
		WHEN [x].[IntNProp] IS NULL
			THEN ''
		ELSE Cast([x].[IntNProp] as NVarChar(11))
	END LIKE '1%'
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NumberLikeTestTable]

