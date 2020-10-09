BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1000

SELECT TOP (@take) 
	[a_Patient].[Diagnosis], 
	[a_Patient].[PersonID], 
	Avg([selectParam].[PersonID])
FROM
	[Person] [selectParam]
		LEFT JOIN [Patient] [a_Patient] ON [selectParam].[PersonID] = [a_Patient].[PersonID]
GROUP BY
	[selectParam].[PersonID],
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
HAVING
	[selectParam].[PersonID] = 1
ORDER BY
	[a_Patient].[Diagnosis] DESC

