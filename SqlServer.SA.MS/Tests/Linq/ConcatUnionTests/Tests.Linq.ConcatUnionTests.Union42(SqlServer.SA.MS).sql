BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p_1].[val]
FROM
	(
		SELECT
			[p].[ParentID],
			CAST(1 AS Bit) as [val]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[ch].[ParentID],
			CAST(0 AS Bit) as [val]
		FROM
			[Child] [ch]
	) [p_1]

