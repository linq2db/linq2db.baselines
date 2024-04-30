BeforeExecute
-- Sybase.Managed Sybase
DECLARE @pattern UniVarChar(3) -- String
SET     @pattern = '%1%'

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
			CAST([p_1].[PersonID] AS NVarChar(11)) LIKE @pattern ESCAPE '~'
	) [t1]

