﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DELETE [t1]
FROM
	[GrandChild] [t1]
WHERE
	[t1].[GrandChildID] IN (1001, 1002)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1,
	1,
	1001
)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1,
	2,
	1002
)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Count(*)
FROM
	[GrandChild] [gc]
WHERE
	[gc].[ParentID] = 1

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DELETE [gc]
FROM
	[GrandChild] [gc]
		INNER JOIN [Parent] [a_Parent] ON [gc].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] = 1 AND [gc].[GrandChildID] IN (1001, 1002)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Count(*)
FROM
	[GrandChild] [gc]
WHERE
	[gc].[ParentID] = 1

