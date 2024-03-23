BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[FirstName],
	[t1].[ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	(VALUES
		(N'Janet',2,NULL,NULL,'M'), (N'Doe',3,NULL,NULL,'M')
	) [t1]([FirstName], [ID], [LastName], [MiddleName], [Gender])

