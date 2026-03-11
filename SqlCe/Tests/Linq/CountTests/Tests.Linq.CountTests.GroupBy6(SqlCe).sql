-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Child] [t1]
	) [t2]

