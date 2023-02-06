﻿BeforeExecute
-- SqlServer.2008

MERGE INTO [Parent] [Target]
USING (
	SELECT
		[c_1].[ParentID],
		[c_1].[Value1]
	FROM
		[Parent] [c_1] WITH (NoLock)
	WHERE
		[c_1].[ParentID] < -1111
) [Source]
(
	[ParentID],
	[Value1]
)
ON ([Target].[ParentID] = [Source].[ParentID])

WHEN MATCHED THEN
UPDATE
SET
	[Target].[Value1] = [Source].[Value1]
OPTION (RECOMPILE, FAST 10);

