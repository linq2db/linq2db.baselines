-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	(
		SELECT DISTINCT
			[gr].[ParentID] as [Key_1]
		FROM
			[Child] [gr]
	) [t1]

