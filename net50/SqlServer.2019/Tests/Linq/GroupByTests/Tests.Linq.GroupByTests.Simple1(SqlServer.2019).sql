﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[ParentID]
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	[keyParam].[ParentID],
	[keyParam].[ChildID]
FROM
	[Child] [keyParam]
WHERE
	[keyParam].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT
	[keyParam].[ParentID],
	[keyParam].[ChildID]
FROM
	[Child] [keyParam]
WHERE
	[keyParam].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3

SELECT
	[keyParam].[ParentID],
	[keyParam].[ChildID]
FROM
	[Child] [keyParam]
WHERE
	[keyParam].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4

SELECT
	[keyParam].[ParentID],
	[keyParam].[ChildID]
FROM
	[Child] [keyParam]
WHERE
	[keyParam].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6

SELECT
	[keyParam].[ParentID],
	[keyParam].[ChildID]
FROM
	[Child] [keyParam]
WHERE
	[keyParam].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 7

SELECT
	[keyParam].[ParentID],
	[keyParam].[ChildID]
FROM
	[Child] [keyParam]
WHERE
	[keyParam].[ParentID] = @ParentID

