﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  SqlServer.2012

SELECT
	[m_1].[ParentID],
	[d].[ChildID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON CAST([m_1].[ParentID] AS BigInt) = [d].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
--  SqlServer.2012

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

