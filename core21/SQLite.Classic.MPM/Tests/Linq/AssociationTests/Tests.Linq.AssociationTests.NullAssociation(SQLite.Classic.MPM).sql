﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[a_ParentTest].[ParentID],
	[a_ParentTest].[Value1]
FROM
	[Parent] [p1]
		LEFT JOIN [Parent] [a_ParentTest] ON [p1].[ParentID] = [a_ParentTest].[ParentID] AND ([p1].[Value1] IS NULL AND [a_ParentTest].[Value1] IS NULL OR [p1].[Value1] = [a_ParentTest].[Value1])

