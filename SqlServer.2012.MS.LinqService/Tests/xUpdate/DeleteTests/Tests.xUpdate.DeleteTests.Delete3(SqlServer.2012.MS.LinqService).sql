﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] IN (1001, 1002)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	1001
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	1002
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = 1

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

DELETE [c_1]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] = 1 AND [c_1].[ChildID] IN (1001, 1002)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = 1

