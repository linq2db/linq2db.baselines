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
	CASE
		WHEN LEN(REPLACE([p].[FirstName],' ','.')) > 6
			THEN [p].[FirstName]
		ELSE [p].[FirstName] + Replicate(N' ', 6 - LEN(REPLACE([p].[FirstName],' ','.')))
	END + N'123' = N'John  123' AND
	[p].[PersonID] = 1

