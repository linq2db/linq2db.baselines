BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID]
	),
	(
		SELECT
			Count(*)
		FROM
			[GrandChild] [g_1]
		WHERE
			([t1].[ParentID] = [g_1].[ParentID])
	)
FROM
	[Parent] [t1]

