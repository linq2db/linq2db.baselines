BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take) 
	[p].[PersonID], 
	[p].[FirstName], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender], 
	[a_Patient].[PersonID], 
	[a_Patient].[Diagnosis]
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]
WHERE
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take) 
	[p].[PersonID], 
	[p].[FirstName], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender], 
	[a_Patient].[PersonID], 
	[a_Patient].[Diagnosis]
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]
WHERE
	[p].[PersonID] = 2

