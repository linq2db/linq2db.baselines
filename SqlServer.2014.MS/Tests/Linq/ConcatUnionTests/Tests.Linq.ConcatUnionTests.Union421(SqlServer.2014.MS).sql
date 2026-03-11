-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p_2].[val]
FROM
	(
		SELECT
			[p].[ParentID] as [id],
			CAST(1 AS Bit) as [val]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[p_1].[ParentID] as [id],
			CAST(0 AS Bit) as [val]
		FROM
			[Parent] [p_1]
		UNION
		SELECT
			[ch].[ParentID] as [id],
			CAST(0 AS Bit) as [val]
		FROM
			[Child] [ch]
	) [p_2]

