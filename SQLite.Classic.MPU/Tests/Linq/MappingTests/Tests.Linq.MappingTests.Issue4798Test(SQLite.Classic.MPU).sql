BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'CE1D50ADC2594141982F701AAD554ECE', X'1F3FFBAC78EEE54B865E784775B581F8')
	)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = '74a489ae-4be2-4200-9a41-d5e4f7df6de7'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

