BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	[p].[MiddleName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1
UNION
SELECT
	[p_1].[PersonID],
	[p_1].[FirstName],
	[p_1].[LastName],
	[p_1].[MiddleName]
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] = 1

