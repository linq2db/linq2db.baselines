BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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

