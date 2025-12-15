-- SqlCe

SELECT
	([t].[ParentID] * 1000) / 1000 as [c1]
FROM
	[Child] [t]
WHERE
	[t].[ParentID] * 1000 > 2000

