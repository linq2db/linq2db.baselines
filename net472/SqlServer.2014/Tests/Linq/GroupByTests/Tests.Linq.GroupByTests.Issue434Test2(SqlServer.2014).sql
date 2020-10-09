BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[p].[PersonID], 
	[_gjd_ri].[PersonID], 
	[_gjd_ri].[Diagnosis]
FROM
	[Person] [p]
		INNER JOIN [Patient] [_gjd_ri] ON [_gjd_ri].[PersonID] = [p].[PersonID]
WHERE
	Lower([p].[FirstName]) LIKE N'%test%'

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[p].[FirstName], 
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE N'%test%'

