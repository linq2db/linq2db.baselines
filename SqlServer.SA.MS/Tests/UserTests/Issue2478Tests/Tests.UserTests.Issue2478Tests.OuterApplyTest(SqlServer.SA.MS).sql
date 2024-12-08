BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[ParentID],
	IIF([c_2].[cond] IS NULL, 0, [c_2].[c1])
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [cond],
				COUNT(*) as [c1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID]
		) [c_2]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Parent] [t1]

