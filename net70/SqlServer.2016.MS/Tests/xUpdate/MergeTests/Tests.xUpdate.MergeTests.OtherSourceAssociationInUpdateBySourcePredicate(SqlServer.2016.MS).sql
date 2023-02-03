BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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

WHEN NOT MATCHED By Source AND EXISTS(
	SELECT
		*
	FROM
		[Patient] [a_Patient]
	WHERE
		[a_Patient].[Diagnosis] LIKE N'%very%' ESCAPE N'~' AND
		[Target].[PersonID] = [a_Patient].[PersonID]
) THEN UPDATE
SET
	[Target].[FirstName] = N'Updated'
;

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
