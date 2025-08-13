BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[FirstName],
	[t1].[ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	(VALUES
		(N'Janet',3,CAST(NULL AS NVarChar(4000)),CAST(NULL AS NVarChar(4000)),'M'),
		(N'Doe',4,NULL,NULL,'M')
	) [t1]([FirstName], [ID], [LastName], [MiddleName], [Gender])

