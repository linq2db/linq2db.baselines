-- SqlCe

SELECT
	MIN([t1].[ParentID]) as [Min_1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] < 0

