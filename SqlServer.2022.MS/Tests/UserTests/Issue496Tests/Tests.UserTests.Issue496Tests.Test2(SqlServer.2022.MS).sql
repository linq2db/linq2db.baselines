BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[key_data_result].[ParentID],
	[detail].[ChildID],
	[detail].[ParentID]
FROM
	(
		SELECT DISTINCT
			[_].[ParentID]
		FROM
			[Parent] [_]
	) [key_data_result]
		INNER JOIN [Child] [detail] ON [key_data_result].[ParentID] = [detail].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[_].[ParentID]
FROM
	[Parent] [_]

