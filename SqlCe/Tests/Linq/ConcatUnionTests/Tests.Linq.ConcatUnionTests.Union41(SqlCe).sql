BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID] as [id],
	1 as [val]
FROM
	[Parent] [p]
UNION
SELECT
	[ch].[ParentID] as [id],
	0 as [val]
FROM
	[Child] [ch]

