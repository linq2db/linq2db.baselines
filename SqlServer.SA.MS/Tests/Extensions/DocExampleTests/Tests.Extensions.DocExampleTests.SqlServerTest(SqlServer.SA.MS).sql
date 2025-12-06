-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Child] [c_1] WITH (SPATIAL_WINDOW_MAX_CELLS=10, Index(IX_ChildIndex))
		INNER HASH JOIN [Parent] [p] WITH (NoLock) ON [c_1].[ParentID] = [p].[ParentID]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [a_Children_1]
		WHERE
			[p].[ParentID] = [a_Children_1].[ParentID]
	)
OPTION (RECOMPILE, FAST 10, HASH JOIN)

