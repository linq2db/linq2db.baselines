BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
		[t1].[ChildID]
	FROM
		[Child] [t1]
) [Source]
(
	[ChildID]
)
ON ([Target].[ID] = [Source].[ChildID])

WHEN MATCHED THEN
UPDATE
SET
	[MiddleName] = N'unpdated'
;

