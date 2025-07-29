BeforeExecute
-- SqlServer.2016

SELECT
	[x].[FirstName],
	[x].[ID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	(VALUES
		(1,N'Janet',2,CAST(NULL AS NVarChar(4000)),CAST(NULL AS NVarChar(4000)),'M'),
		(NULL,N'Doe',3,NULL,NULL,'M')
	) [x]([Patient_PersonID], [FirstName], [ID], [LastName], [MiddleName], [Gender])
WHERE
	[x].[Patient_PersonID] = 1

