BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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
			[i].[PersonID] as [ID],
			[i].[LastName],
			[i].[MiddleName],
			[i].[Gender] as [Gender_1]
		FROM
			[Person] [i]
		UNION ALL
		SELECT
			IIF([i_1].[MiddleName] IS NULL, @p, @p_1) as [Gender],
			[i_1].[FirstName],
			[i_1].[PersonID] as [ID],
			[i_1].[LastName],
			[i_1].[MiddleName],
			[i_1].[Gender] as [Gender_1]
		FROM
			[Person] [i_1]
	) [i_2]
WHERE
	[i_2].[Gender] = @p_2
ORDER BY
	[i_2].[FirstName] DESC

