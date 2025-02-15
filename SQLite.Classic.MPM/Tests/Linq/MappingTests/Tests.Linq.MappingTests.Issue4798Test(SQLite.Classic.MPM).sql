BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'E9834D44E4DF7248A90A8FB453AFDE7F', X'08A1919DF984CA4ABCA1B7C6C4F9649C')
	)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = '16db52cd-cdc5-4d52-981c-06a1fd013df4'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

