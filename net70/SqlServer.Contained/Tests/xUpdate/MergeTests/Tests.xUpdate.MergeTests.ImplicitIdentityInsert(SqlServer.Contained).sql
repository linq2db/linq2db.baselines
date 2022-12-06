BeforeExecute
-- SqlServer.Contained SqlServer.2019

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	Max([_].[PersonID])
FROM
	[Person] [_]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

MERGE INTO [Person] [Target]
USING (
	SELECT
		[p].[PersonID] + 50 as [source_field0],
		[p].[FirstName],
		[p].[LastName],
		[p].[MiddleName],
		[p].[Gender]
	FROM
		[Person] [p]
) [Source]
(
	[source_field0],
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
ON ([Target].[PersonID] + 50 = [Source].[source_field0] AND
[Target].[FirstName] <> N'first 3')

WHEN NOT MATCHED AND [Source].[FirstName] = N'first 3' THEN
INSERT
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	[Source].[FirstName],
	[Source].[LastName],
	[Source].[MiddleName],
	[Source].[Gender]
)
;

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
