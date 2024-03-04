BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	0 >= CASE
		WHEN [p].[FirstName] > N'Johnn'
			THEN 1
		WHEN [p].[FirstName] = N'Johnn'
			THEN 0
		ELSE -1
	END AND
	[p].[PersonID] = 1

