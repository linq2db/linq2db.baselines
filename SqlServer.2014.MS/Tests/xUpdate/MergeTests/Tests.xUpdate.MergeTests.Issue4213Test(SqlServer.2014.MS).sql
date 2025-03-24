﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014

WITH [CTE_1] ([ID], [MiddleName], [Gender])
AS
(
	SELECT
		[x].[PersonID],
		[x].[MiddleName],
		[x].[Gender]
	FROM
		[Person] [x]
	WHERE
		[x].[FirstName] = N'unknown'
)
MERGE INTO [CTE_1] [Target]
USING (
	SELECT
		[t1].[ChildID] as [source_ChildID]
	FROM
		[Child] [t1]
) [Source]
(
	[source_ChildID]
)
ON ([Target].[ID] = [Source].[source_ChildID])

WHEN MATCHED THEN
UPDATE
SET
	[MiddleName] = N'unpdated'
OUTPUT
	INSERTED.[Gender]
;

