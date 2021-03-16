BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t2].[ParentID],
	[t2].[ParentID_1]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ParentID_1]
		FROM
			(
				SELECT
					[c_1].[ParentID],
					[c_1].[ParentID] as [ParentID_1]
				FROM
					[Child] [c_1]
				UNION
				SELECT
					[c_2].[ParentID],
					NULL as [ParentID_1]
				FROM
					[Parent] [c_2]
			) [t1]
		UNION ALL
		SELECT
			[c_3].[ParentID],
			[c_3].[ParentID] as [ParentID_1]
		FROM
			[Child] [c_3]
	) [t2]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t2].[ParentID],
	[t2].[ParentID_1]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ParentID_1]
		FROM
			(
				SELECT
					[c_1].[ParentID],
					[c_1].[ParentID] as [ParentID_1]
				FROM
					[Child] [c_1]
				UNION
				SELECT
					[c_2].[ParentID],
					NULL as [ParentID_1]
				FROM
					[Parent] [c_2]
			) [t1]
		UNION ALL
		SELECT
			[c_3].[ParentID],
			[c_3].[ParentID] as [ParentID_1]
		FROM
			[Child] [c_3]
	) [t2]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

