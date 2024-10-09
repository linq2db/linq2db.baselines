BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'M'
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'O'
DECLARE @p_2 NVarChar(4000) -- String
SET     @p_2 = N'O'

SELECT
	[i_2].[LastName]
FROM
	(
		SELECT
			IIF([i].[MiddleName] IS NULL, @p, @p_1) as [Gender],
			[i].[FirstName],
			[i].[LastName]
		FROM
			[Person] [i]
		UNION ALL
		SELECT
			IIF([i_1].[MiddleName] IS NULL, @p, @p_1) as [Gender],
			[i_1].[FirstName],
			[i_1].[LastName]
		FROM
			[Person] [i_1]
	) [i_2]
WHERE
	[i_2].[Gender] = @p_2
ORDER BY
	[i_2].[FirstName] DESC

