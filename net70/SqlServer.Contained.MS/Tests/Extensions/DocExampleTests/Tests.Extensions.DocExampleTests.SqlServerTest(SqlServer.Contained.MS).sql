BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t3].[ParentID],
	[t3].[Count_1]
FROM
	[Child] [c_1] WITH (SPATIAL_WINDOW_MAX_CELLS=10, Index(IX_ChildIndex))
		INNER HASH JOIN (
			SELECT
				[t].[ParentID],
				(
					SELECT
						Count(*)
					FROM
						[Child] [t1]
					WHERE
						[t].[ParentID] = [t1].[ParentID]
				) as [Count_1]
			FROM
				[Parent] [t] WITH (NoLock)
			WHERE
				EXISTS(
					SELECT
						*
					FROM
						[Child] [t2]
					WHERE
						[t].[ParentID] = [t2].[ParentID]
				)
		) [t3] ON [c_1].[ParentID] = [t3].[ParentID]
OPTION (RECOMPILE, FAST 10, HASH JOIN)

