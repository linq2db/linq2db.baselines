BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2017

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t1].[PersonID] as [source_ID]
	FROM
		[Person] [t1]
) [Source]
(
	[source_ID]
)
ON ([Target].[PersonID] = [Source].[source_ID] + 10)

WHEN NOT MATCHED By Source AND (
	SELECT
		IIF([a_Patient].[Diagnosis] LIKE N'%very%' ESCAPE N'~', 1, 0)
	FROM
		[Patient] [a_Patient]
	WHERE
		[Target].[PersonID] = [a_Patient].[PersonID]
) = 1 THEN UPDATE
SET
	[FirstName] = N'Updated'
;

BeforeExecute
-- SqlServer.2017

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
