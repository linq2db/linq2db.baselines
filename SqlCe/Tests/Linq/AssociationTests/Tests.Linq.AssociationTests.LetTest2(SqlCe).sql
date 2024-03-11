BeforeExecute
-- SqlCe

SELECT
	[pp].[ParentID],
	[t1].[Count_1]
FROM
	[Parent] [pp]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[pp].[ParentID] = [a_Children].[ParentID]
		) [t1]

BeforeExecute
-- SqlCe

SELECT
	[pp].[ParentID],
	[t1].[Count_1]
FROM
	[Parent] [pp]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[pp].[ParentID] = [a_Children].[ParentID]
		) [t1]

