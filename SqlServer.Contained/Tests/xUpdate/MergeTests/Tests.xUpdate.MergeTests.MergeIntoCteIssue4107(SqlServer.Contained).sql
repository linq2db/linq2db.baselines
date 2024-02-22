﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'unpdated'

WITH [CTE_1] ([ID], [MiddleName])
AS
(
	SELECT
		[x].[PersonID],
		[x].[MiddleName]
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
	[MiddleName] = @p
;

