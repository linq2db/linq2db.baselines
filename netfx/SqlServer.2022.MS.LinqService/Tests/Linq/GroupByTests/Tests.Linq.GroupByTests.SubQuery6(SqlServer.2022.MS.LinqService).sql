BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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

