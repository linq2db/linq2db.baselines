﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	20000
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	10000,
	20000
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

UPDATE
	[Parent]
SET
	[Parent].[Value1] = 5
FROM
	[Child] [child_1]
		LEFT JOIN [Parent] [a_Parent] ON [child_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[child_1].[ChildID] = 10000

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] = 10000

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = 20000

