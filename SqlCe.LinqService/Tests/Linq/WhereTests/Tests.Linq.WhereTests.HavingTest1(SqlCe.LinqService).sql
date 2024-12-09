BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [cond]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	COUNT(*) > 1

