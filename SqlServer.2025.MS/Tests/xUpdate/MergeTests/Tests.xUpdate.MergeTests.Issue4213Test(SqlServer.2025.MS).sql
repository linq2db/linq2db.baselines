-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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
OUTPUT
	INSERTED.[Gender]
;

