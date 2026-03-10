-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	(
		SELECT DISTINCT
			[gr].[ParentID]
		FROM
			[Child] [gr]
	) [t1]

