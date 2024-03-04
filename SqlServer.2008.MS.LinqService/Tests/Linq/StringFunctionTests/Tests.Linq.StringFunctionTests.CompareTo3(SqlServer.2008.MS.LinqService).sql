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
	CASE
		WHEN [p].[FirstName] > N'55'
			THEN 1
		WHEN [p].[FirstName] = N'55'
			THEN 0
		ELSE -1
	END > 0 AND
	[p].[PersonID] = 1

