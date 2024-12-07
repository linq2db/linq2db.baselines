BeforeExecute
-- SqlServer.SA SqlServer.2019

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

