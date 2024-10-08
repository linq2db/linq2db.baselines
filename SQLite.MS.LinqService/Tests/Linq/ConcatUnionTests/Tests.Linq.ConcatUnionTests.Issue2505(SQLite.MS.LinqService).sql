BeforeExecute
-- SQLite.MS SQLite
DECLARE @p NVarChar(1) -- String
SET     @p = 'M'
DECLARE @p_1 NVarChar(1) -- String
SET     @p_1 = 'O'
DECLARE @p_2 NVarChar(1) -- String
SET     @p_2 = 'O'

SELECT
	[i_2].[LastName]
FROM
	(
		SELECT
			CASE
				WHEN [i].[MiddleName] IS NULL THEN @p
				ELSE @p_1
			END as [Gender],
			[i].[FirstName],
			[i].[LastName]
		FROM
			[Person] [i]
		UNION ALL
		SELECT
			CASE
				WHEN [i_1].[MiddleName] IS NULL THEN @p
				ELSE @p_1
			END as [Gender],
			[i_1].[FirstName],
			[i_1].[LastName]
		FROM
			[Person] [i_1]
	) [i_2]
WHERE
	[i_2].[Gender] = @p_2
ORDER BY
	[i_2].[FirstName] DESC

