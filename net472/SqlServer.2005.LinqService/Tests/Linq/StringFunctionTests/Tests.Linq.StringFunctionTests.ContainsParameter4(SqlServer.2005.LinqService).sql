BeforeExecute
-- SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'%Jo%' ESCAPE N'~'
ORDER BY
	CASE
		WHEN [p].[FirstName] LIKE N'%Jo%' ESCAPE N'~'
			THEN 1
		ELSE 0
	END

