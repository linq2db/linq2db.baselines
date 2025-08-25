BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender],
	[a_Patient].[PersonID],
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
FROM
	[Person] [t1]
		LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
UNION ALL
SELECT
	[t3].[FirstName],
	[t3].[ID],
	[t3].[LastName],
	[t3].[MiddleName],
	[t3].[Gender],
	[t3].[cond],
	[t3].[cond],
	[t3].[Diagnosis]
FROM
	(
		SELECT TOP (@take)
			[t2].[FirstName],
			[t2].[PersonID] as [ID],
			[t2].[LastName],
			[t2].[MiddleName],
			[t2].[Gender],
			[a_Patient_1].[PersonID] as [cond],
			[a_Patient_1].[Diagnosis]
		FROM
			[Person] [t2]
				LEFT JOIN [Patient] [a_Patient_1] ON [t2].[PersonID] = [a_Patient_1].[PersonID]
	) [t3]

