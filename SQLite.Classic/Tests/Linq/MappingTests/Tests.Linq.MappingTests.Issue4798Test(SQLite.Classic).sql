BeforeExecute
-- SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'C6E5FE9D08A60647A861333B3CA1E362', X'83761E789B71AB4CBC1908D6711B599C')
	)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = 'fdca5d05-ae2d-4626-9173-8b241d16b709'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

