BeforeExecute
-- Sybase.Managed Sybase
DECLARE @pattern_1 UniVarChar(3) -- String
SET     @pattern_1 = '%1%'

SELECT TOP 10
	[t1].[FirstName]
FROM
	(
		SELECT
			[p].[FirstName]
		FROM
			[Person] [p]
		WHERE
			[p].[FirstName] LIKE '1'
		UNION ALL
		SELECT
			[p_1].[FirstName]
		FROM
			[Person] [p_1]
		WHERE
			Convert(NVarChar(11), [p_1].[PersonID]) LIKE @pattern_1 ESCAPE '~'
	) [t1]

