BeforeExecute
-- SqlServer.2008 (asynchronously)

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
		WHEN LEN([p].[FirstName] + N'.') = 3 THEN [p].[FirstName] + N'123'
		ELSE Stuff([p].[FirstName], 3, 0, N'123')
	END = N'Jo123hn' AND
	[p].[PersonID] = 1

