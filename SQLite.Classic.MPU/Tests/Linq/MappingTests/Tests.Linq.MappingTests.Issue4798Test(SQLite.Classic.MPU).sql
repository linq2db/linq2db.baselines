BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'9BD952E2C2446A48AD5C4D87617E28B8', X'499ADB27E87E4543A153EAD8BD4CDE15')
	)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = '58a4750c-04ad-42f8-8a4c-b96077b10a7d'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

