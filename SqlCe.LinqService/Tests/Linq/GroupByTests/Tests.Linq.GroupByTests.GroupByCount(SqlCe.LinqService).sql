BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	(
		SELECT
			[gr].[ParentID] as [Key_1]
		FROM
			[Child] [gr]
		GROUP BY
			[gr].[ParentID]
	) [t1]

