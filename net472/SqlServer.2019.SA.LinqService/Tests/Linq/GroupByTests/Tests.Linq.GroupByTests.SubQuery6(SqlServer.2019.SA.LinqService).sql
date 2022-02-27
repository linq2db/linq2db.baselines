BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[ParentID]
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [ParentID]
		FROM
			[Child] [ch]
	) [t1]
GROUP BY
	[t1].[ParentID]

