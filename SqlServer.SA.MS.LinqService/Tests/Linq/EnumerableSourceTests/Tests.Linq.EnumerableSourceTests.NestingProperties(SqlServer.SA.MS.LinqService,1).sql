BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x].[FirstName],
	[x].[ID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	(VALUES
		(1,N'Janet',2,NULL,NULL,'M'), (NULL,N'Doe',3,NULL,NULL,'M')
	) [x]([Patient_PersonID], [FirstName], [ID], [LastName], [MiddleName], [Gender])
WHERE
	[x].[Patient_PersonID] = 1

