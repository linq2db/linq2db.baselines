BeforeExecute
-- SqlServer.2014

SELECT
	[p].[ParentID],
	CAST(1 AS Bit)
FROM
	[Parent] [p]
UNION
SELECT
	[ch].[ParentID],
	CAST(0 AS Bit)
FROM
	[Child] [ch]

