BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

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
		INNER JOIN [Child] [detail] ON Cast([key_data_result].[ParentID] as BigInt) = [detail].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[_].[ParentID]
FROM
	[Parent] [_]

