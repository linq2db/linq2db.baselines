-- SqlServer.CS.MS SqlServer.2025
DECLARE @arr Int -- Int32
SET     @arr = 2

SELECT
	[p].[PersonID],
	CAST(@arr AS Int)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1
UNION ALL
SELECT
	[p_1].[PersonID],
	CAST(0 AS Int)
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] = 2

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

