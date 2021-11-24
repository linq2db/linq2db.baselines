BeforeExecute
-- SqlCe

SELECT
	[c_1].[ParentID],
	[c_1].[ParentID]
FROM
	[Child] [c_1]
UNION
SELECT
	[c_2].[ParentID],
	NULL
FROM
	[Parent] [c_2]
UNION ALL
SELECT
	[c_3].[ParentID],
	[c_3].[ParentID]
FROM
	[Child] [c_3]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

