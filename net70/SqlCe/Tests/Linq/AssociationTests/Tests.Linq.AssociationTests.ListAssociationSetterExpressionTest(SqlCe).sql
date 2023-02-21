BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[lw_ListAssociationSetterExpressionTestClass].[ParentID],
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
	) [lw_ListAssociationSetterExpressionTestClass]
		INNER JOIN [Child] [detail] ON [lw_ListAssociationSetterExpressionTestClass].[ParentID] = [detail].[ParentID]

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[ParentID]
FROM
	[Parent] [t1]

BeforeExecute
DisposeTransaction
