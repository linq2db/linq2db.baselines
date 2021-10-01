BeforeExecute
-- SqlServer.2012

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		CROSS APPLY (VALUES
			([p].[FirstName],1,N'Janet'), (NULL,2,N'Doe')
		) [t1]([FirstName], [PersonID], [LastName])
WHERE
	[p].[LastName] = [t1].[LastName]

