-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

-- SqlServer.Contained.MS SqlServer.2019

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t1].[PersonID] as [ID],
		[a_Patient].[Diagnosis] as [Patient_Diagnosis]
	FROM
		[Person] [t1]
			INNER JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
) [Source]
(
	[ID],
	[Patient_Diagnosis]
)
ON ([Target].[PersonID] = [Source].[ID] AND [Source].[Patient_Diagnosis] IS NOT NULL)
WHEN MATCHED AND [Source].[Patient_Diagnosis] <> N'sick' OR [Source].[Patient_Diagnosis] IS NULL THEN DELETE
;

