BeforeExecute
-- SQLite.MS SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'BFD593658C5BB143886CA6075271EB4D', X'E26C97B59AD4D649ADC65A13B9001543')
	)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = 'cb517e8f-c171-4c9a-822d-54b89835b0d8'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

