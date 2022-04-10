BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Count_1]
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
		) [p] ON [c_1].[ParentID] = [p].[ParentID]
OPTION (RECOMPILE, FAST 10, HASH JOIN)

