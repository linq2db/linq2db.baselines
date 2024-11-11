BeforeExecute
-- SqlCe

SELECT
	NULL as [ChildID]
FROM
	[GrandChild] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

