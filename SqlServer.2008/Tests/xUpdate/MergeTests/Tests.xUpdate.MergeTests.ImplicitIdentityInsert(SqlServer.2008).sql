﻿BeforeExecute
-- SqlServer.2008

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2008

SELECT
	Max([_].[PersonID])
FROM
	[Person] [_]

BeforeExecute
-- SqlServer.2008

MERGE INTO [Person] [Target]
USING (
	SELECT
		[p].[PersonID] + 50 as [source_ID],
		[p].[FirstName] as [source_FirstName],
		[p].[LastName] as [source_LastName],
		[p].[MiddleName] as [source_MiddleName],
		[p].[Gender] as [source_Gender]
	FROM
		[Person] [p]
) [Source]
(
	[source_ID],
	[source_FirstName],
	[source_LastName],
	[source_MiddleName],
	[source_Gender]
)
ON ([Target].[PersonID] + 50 = [Source].[source_ID] AND
[Target].[FirstName] <> N'first 3')

WHEN NOT MATCHED AND [Source].[source_FirstName] = N'first 3' THEN
INSERT
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	[Source].[source_FirstName],
	[Source].[source_LastName],
	[Source].[source_MiddleName],
	[Source].[source_Gender]
)
;

BeforeExecute
-- SqlServer.2008

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
