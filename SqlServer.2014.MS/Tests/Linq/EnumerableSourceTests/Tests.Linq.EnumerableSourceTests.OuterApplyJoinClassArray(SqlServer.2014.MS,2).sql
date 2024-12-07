BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		OUTER APPLY (
			SELECT
				*
			FROM
				(VALUES
					([p].[FirstName],1,N'Janet'), (NULL,2,N'Doe')
				) [n]([FirstName], [PersonID], [LastName])
			WHERE
				[p].[LastName] = [n].[LastName]
		) [n_1]

