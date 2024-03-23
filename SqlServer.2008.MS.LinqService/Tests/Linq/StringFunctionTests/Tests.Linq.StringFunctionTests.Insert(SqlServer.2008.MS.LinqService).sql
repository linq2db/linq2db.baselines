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
		WHEN Len([p].[FirstName]) = 2 THEN [p].[FirstName] + N'123'
		ELSE Stuff([p].[FirstName], 3, 0, N'123')
	END = N'Jo123hn' AND
	[p].[PersonID] = 1

