BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT /* qb */
	[t].[PersonID],
	[t].[Diagnosis]
FROM
	(
		SELECT
			[c_1].[ParentID]
		FROM
			[Parent] [p] WITH (ReadUncommitted),
			[Child] [c_1] WITH (NoLock, NoWait, ReadUncommitted)
	) [t1]
		INNER LOOP JOIN [Patient] [t] WITH (ReadUncommitted) ON [t1].[ParentID] = [t].[PersonID]
OPTION (RECOMPILE)

