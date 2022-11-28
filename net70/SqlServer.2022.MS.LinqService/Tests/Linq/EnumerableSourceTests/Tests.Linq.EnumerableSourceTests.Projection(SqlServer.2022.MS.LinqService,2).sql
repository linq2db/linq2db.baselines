BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	(VALUES
		(N'Janet',3,NULL,NULL,'M'), (N'Doe',4,NULL,NULL,'M')
	) [t1]([FirstName], [PersonID], [LastName], [MiddleName], [Gender])

