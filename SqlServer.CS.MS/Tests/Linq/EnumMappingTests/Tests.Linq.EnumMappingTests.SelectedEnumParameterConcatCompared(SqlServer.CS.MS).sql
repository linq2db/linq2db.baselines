-- SqlServer.CS.MS SqlServer.2025
DECLARE @gender Int -- Int32
SET     @gender = 1

SELECT
	[p_2].[ID],
	[p_2].[Gender]
FROM
	(
		SELECT
			CAST(@gender AS Int) as [Gender],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
		UNION ALL
		SELECT
			CAST(@gender AS Int) as [Gender],
			[p_1].[PersonID] as [ID]
		FROM
			[Person] [p_1]
	) [p_2]
WHERE
	[p_2].[Gender] = @gender

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

