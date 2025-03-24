﻿BeforeExecute
BeginTransactionAsync(RepeatableRead)
BeforeExecute
--  SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT TOP (1)
			[x].[ParentID]
		FROM
			[Parent] [x]
		WHERE
			[x].[ParentID] = 3
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT TOP (1)
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 3

BeforeExecute
DisposeTransactionAsync
BeforeExecute
BeginTransactionAsync(RepeatableRead)
BeforeExecute
--  SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT TOP (1)
			[x].[ParentID]
		FROM
			[Parent] [x]
		WHERE
			[x].[ParentID] = 3
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT TOP (1)
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 3

BeforeExecute
DisposeTransactionAsync
