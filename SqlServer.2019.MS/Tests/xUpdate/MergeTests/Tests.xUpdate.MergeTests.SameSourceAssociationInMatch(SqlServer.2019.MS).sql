BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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
ON (EXISTS(
	SELECT
		*
	FROM
		[Patient] [a_Patient_1]
	WHERE
		[Target].[PersonID] = [a_Patient_1].[PersonID] AND
		[Target].[PersonID] = [Source].[ID] AND
		[a_Patient_1].[Diagnosis] LIKE N'%very%' ESCAPE N'~' AND
		[Source].[Patient_Diagnosis] LIKE N'%sick%' ESCAPE N'~'
))

WHEN MATCHED THEN
UPDATE
SET
	[MiddleName] = N'R.I.P.'
;

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]

BeforeExecute
DisposeTransaction
