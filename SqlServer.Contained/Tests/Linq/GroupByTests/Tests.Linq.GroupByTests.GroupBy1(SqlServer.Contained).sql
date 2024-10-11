BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[p_2].[Key_1]
FROM
	(
		SELECT
			[p_1].[ParentID] as [Key_1]
		FROM
			(
				SELECT
					[p].[ParentID]
				FROM
					[Child] [p]
				GROUP BY
					[p].[ParentID]
			) [p_1]
		GROUP BY
			[p_1].[ParentID],
			[p_1].[ParentID]
	) [p_2]
GROUP BY
	[p_2].[Key_1]

