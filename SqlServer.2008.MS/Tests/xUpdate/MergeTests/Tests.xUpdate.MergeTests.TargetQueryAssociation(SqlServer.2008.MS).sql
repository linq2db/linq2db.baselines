BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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

WHEN NOT MATCHED BY SOURCE AND (
	SELECT
		CASE
			WHEN [p].[Diagnosis] LIKE N'%very%' ESCAPE N'~' THEN 1
			ELSE 0
		END
	FROM
		[Patient] [p]
	WHERE
		[p].[PersonID] = [Target].[PersonID]
) = 1 THEN DELETE
;

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
