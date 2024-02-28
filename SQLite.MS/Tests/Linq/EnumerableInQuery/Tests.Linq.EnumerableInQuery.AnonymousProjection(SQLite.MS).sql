BeforeExecute
-- SQLite.MS SQLite

SELECT
	[_].[ParentID]
FROM
	[Parent] [_]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[key_data_result].[ParentID],
	[_c1].[ParentID]
FROM
	(
		SELECT DISTINCT
			[_].[ParentID]
		FROM
			[Parent] [_]
	) [key_data_result]
		INNER JOIN (
			SELECT NULL [ParentID] WHERE 1 = 0
			UNION ALL
			VALUES
				(1), (2), (3), (4), (5), (6), (7)
			) [_c1] ON [_c1].[ParentID] = [key_data_result].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[_].[ParentID]
FROM
	[Parent] [_]

