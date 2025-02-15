BeforeExecute
-- SQLite.MS SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'AED46D4B0746454FBCD0955225F447D6', X'BD4063B73CB3064FB5BD723A13EE0E1B')
	)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = '959ca114-d814-45a7-b3a3-3b80b87b59c9'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

