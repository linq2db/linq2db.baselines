BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

MERGE INTO [Parent] [Target]
USING (
	SELECT
		[c_1].[ParentID] as [source_ParentID],
		[c_1].[Value1] as [source_Value1]
	FROM
		[Parent] [c_1] WITH (NoLock)
	WHERE
		[c_1].[ParentID] < -1111
) [Source]
(
	[source_ParentID],
	[source_Value1]
)
ON ([Target].[ParentID] = [Source].[source_ParentID])

WHEN MATCHED THEN
UPDATE
SET
	[Value1] = [Source].[source_Value1]
OPTION (RECOMPILE, FAST 10);

