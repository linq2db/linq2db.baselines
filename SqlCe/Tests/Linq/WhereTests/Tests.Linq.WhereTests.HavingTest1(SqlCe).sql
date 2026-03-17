-- SqlCe

SELECT
	COUNT(*) as [count_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	COUNT(*) > 1

