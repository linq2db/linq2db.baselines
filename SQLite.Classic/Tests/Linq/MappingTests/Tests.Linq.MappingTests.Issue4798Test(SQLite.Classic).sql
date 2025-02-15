BeforeExecute
-- SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'910A33AF98A1C94AB98714B2AB7426A9', X'96B87346BDE1584CAF9DF9773461F9FA')
	)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = '0ff07bab-357d-4ded-817e-560eae38d7a6'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

