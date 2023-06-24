BeforeExecute
-- SqlServer.2008

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	N'123' + CASE
		WHEN LEN(REPLACE([p].[FirstName],' ','.')) > 6
			THEN [p].[FirstName]
		ELSE Replicate(N' ', 6 - LEN(REPLACE([p].[FirstName],' ','.'))) + [p].[FirstName]
	END = N'123  John' AND
	[p].[PersonID] = 1

