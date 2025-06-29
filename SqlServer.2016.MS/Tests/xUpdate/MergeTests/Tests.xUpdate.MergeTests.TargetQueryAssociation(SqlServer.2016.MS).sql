BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

MERGE INTO [Person] [Target]
USING (
	SELECT
		[t1].[PersonID] as [ID]
	FROM
		[Person] [t1]
) [Source]
(
	[ID]
)
ON ([Target].[PersonID] = [Source].[ID] + 10)
WHEN NOT MATCHED BY SOURCE AND (
	SELECT
		IIF([p].[Diagnosis] LIKE N'%very%' ESCAPE N'~', 1, 0)
	FROM
		[Patient] [p]
	WHERE
		[p].[PersonID] = [Target].[PersonID]
) = 1 THEN DELETE
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
