BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	(VALUES
		(N'Janet',2,CAST(NULL AS NVarChar(4000)),CAST(NULL AS NVarChar(4000)),'M'),
		(N'Doe',3,NULL,NULL,'M')
	) [t1]([FirstName], [ID], [LastName], [MiddleName], [Gender])

