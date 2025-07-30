BeforeExecute
-- SqlServer.2008

SELECT
	MAX([t1].[COUNT_1])
FROM
	[Parent] [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [c_1]
					LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
			WHERE
				[a_Parent].[ParentID] = [t2].[ParentID]
		) [t1]

