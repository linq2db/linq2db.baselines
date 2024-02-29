BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[lw_Issue3975TestClass].[ParentID],
	[detail].[ParentID],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t2].[ParentID]
		FROM
			(
				SELECT TOP (@take)
					[t1].[ParentID]
				FROM
					[Parent] [t1]
			) [t2]
	) [lw_Issue3975TestClass]
		INNER JOIN [Child] [detail] ON [lw_Issue3975TestClass].[ParentID] = [detail].[ParentID]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[ParentID]
FROM
	[Parent] [t1]

BeforeExecute
DisposeTransaction
