BeforeExecute
-- SQLite.MS SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'308C6B67D974F24AB85EB13DA1A7B90A', X'7322FCE473FA7E4CA7EF0645DD43D87E')
	)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = '803fe5b0-98bd-491e-92a5-268de9e23380'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

