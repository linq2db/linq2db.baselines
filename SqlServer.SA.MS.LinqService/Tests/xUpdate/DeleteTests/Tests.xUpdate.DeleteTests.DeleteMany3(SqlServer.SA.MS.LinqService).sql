﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DELETE [c_1]
FROM
	[GrandChild] [c_1]
WHERE
	([c_1].[ParentID] >= 1000)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DELETE [c_1]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	1001
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1001,
	1
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	1,
	1
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	1,
	2
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DELETE [a_GrandChildren]
FROM
	[Parent] [gc]
		INNER JOIN [Child] [a_Children] ON [gc].[ParentID] = [a_Children].[ParentID]
		INNER JOIN [GrandChild] [a_GrandChildren] ON [a_Children].[ParentID] = [a_GrandChildren].[ParentID] AND [a_Children].[ChildID] = [a_GrandChildren].[ChildID]
WHERE
	[gc].[ParentID] IN (1001)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DELETE [c_1]
FROM
	[GrandChild] [c_1]
WHERE
	([c_1].[ParentID] >= 1000)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DELETE [c_1]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

