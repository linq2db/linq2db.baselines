BeforeExecute
-- SqlCe

SELECT
	[t1].[Count_1]
FROM
	[Child] [a]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[GrandChild] [a_GrandChildren1]
			WHERE
				[a].[ParentID] = [a_GrandChildren1].[ParentID] AND
				[a].[ChildID] = [a_GrandChildren1].[ChildID]
		) [t1]

