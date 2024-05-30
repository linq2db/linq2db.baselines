BeforeExecute
-- SqlServer.2016

SELECT
	[c_2].[COUNT_1]
FROM
	(
		SELECT
			[c_1].[ParentID],
			COUNT(*) as [COUNT_1]
		FROM
			[Child] [c_1]
		GROUP BY
			[c_1].[ParentID]
		HAVING
			[c_1].[ParentID] > 1
	) [c_2]
WHERE
	[c_2].[ParentID] > 1 AND [c_2].[COUNT_1] > 1

