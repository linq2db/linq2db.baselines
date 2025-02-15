BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'2F983697BB0E07469368AB98BA811D9F', X'6F6D21292C04D44E93101F749271E6A3')
	)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = '289cb1a4-dc53-4156-aefd-6fb46fa3481e'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

