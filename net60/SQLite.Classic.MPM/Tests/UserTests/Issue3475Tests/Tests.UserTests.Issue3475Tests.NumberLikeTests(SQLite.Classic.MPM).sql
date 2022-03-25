BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [NumberLikeTestTable]
(
	[IntNProp] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [NumberLikeTestTable]

