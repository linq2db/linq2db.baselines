BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	CAST(1 AS Bit) as [c1]
FROM
	[Parent] [p]
UNION
SELECT
	[ch].[ParentID],
	CAST(0 AS Bit) as [c1]
FROM
	[Child] [ch]

