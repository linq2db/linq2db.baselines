BeforeExecute
-- SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'D16DA3EBA780234F81CEF175B577F50C', X'05915DA95DC09F4B93C1F76678D06BE5')
	)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = 'ba13e192-ef6d-47de-8ea0-153df6edf125'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

