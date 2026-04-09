-- SqlServer.2016.MS SqlServer.2016

WITH [CTE_1]
(
	[ID],
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender],
	[Patient_PersonID],
	[Patient_Diagnosis]
)
AS
(
	SELECT
		[t1].[PersonID],
		[t1].[FirstName],
		[t1].[LastName],
		[t1].[MiddleName],
		[t1].[Gender],
		[a_Patient].[PersonID],
		[a_Patient].[Diagnosis]
	FROM
		[Person] [t1]
			LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
)
SELECT
	[r].[FirstName],
	[r].[ID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender],
	[r].[PersonID],
	[r].[Diagnosis]
FROM
	(
		SELECT
			[t2].[ID],
			[t2].[FirstName],
			[t2].[LastName],
			[t2].[MiddleName],
			[t2].[Gender],
			[t2].[Patient_PersonID] as [PersonID],
			[t2].[Patient_Diagnosis] as [Diagnosis]
		FROM
			[CTE_1] [t2]
	) [r]
WHERE
	[r].[ID] = 2

-- SqlServer.2016.MS SqlServer.2016

WITH [CTE_1] ([c1])
AS
(
	SELECT
		1
	FROM
		[Person] [t1]
)
SELECT
	COUNT(*)
FROM
	[CTE_1] [t2]

