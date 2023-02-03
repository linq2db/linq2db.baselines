BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

MERGE INTO [Person] [Target]
USING
(
	SELECT
		[t1].[PersonID] as [ID]
	FROM
		[Person] [t1]
) [Source]
(
	[ID]
)
ON ([Target].[PersonID] = [Source].[ID] + 10)
WHEN NOT MATCHED BY SOURCE AND EXISTS(
	SELECT
		*
	FROM
		[Patient] [p]
	WHERE
		[p].[Diagnosis] LIKE N'%very%' ESCAPE N'~' AND [p].[PersonID] = [Target].[PersonID]
) THEN DELETE
;

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
