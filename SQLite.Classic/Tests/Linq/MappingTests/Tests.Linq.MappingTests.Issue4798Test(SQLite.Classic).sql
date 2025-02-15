BeforeExecute
-- SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'F630D76649B68A47A8F4F0168552293A', X'BF984F9ABDB4CE44B2810FDD558ACB94')
	)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = 'eabe883c-25c7-496c-a845-cf04782bc2e5'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

