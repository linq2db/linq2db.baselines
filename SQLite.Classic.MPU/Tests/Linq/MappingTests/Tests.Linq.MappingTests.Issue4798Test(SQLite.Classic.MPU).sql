BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'7EBA0024DA4EED4EA8FCC865F604B0AA', X'1E4650072080084A9DE73506AF0B673C')
	)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = '7885543f-5b06-41c4-89a0-cf0f8fdc1507'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

