BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[gr].[ParentID] as [Key_1]
		FROM
			[Child] [gr]
		GROUP BY
			[gr].[ParentID]
	) [t1]

