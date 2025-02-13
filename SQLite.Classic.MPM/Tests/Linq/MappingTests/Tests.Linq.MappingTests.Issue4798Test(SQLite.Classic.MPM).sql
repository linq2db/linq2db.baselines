BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'E136C3B3704EC14B8490A1AFA1588A8D', X'B6B95673B657D148ACBB7BE6BFFA7F98')
	)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = 'db177abe-2b92-4e44-a2f9-14780e607b86'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

