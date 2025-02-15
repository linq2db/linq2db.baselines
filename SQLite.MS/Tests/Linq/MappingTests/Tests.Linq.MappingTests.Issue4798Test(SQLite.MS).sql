BeforeExecute
-- SQLite.MS SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'2E9F1F9DF38C8D4EADF36F46E95518D2', X'F7A112193DAC394FBAF1E116CE9F5D13')
	)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = '77f092c9-56d1-4dfc-8fb8-8179cc0c0137'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

