BeforeExecute
-- SqlCe

SELECT
	MAX([t1].[ParentID]) as [Max_1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] < 0

