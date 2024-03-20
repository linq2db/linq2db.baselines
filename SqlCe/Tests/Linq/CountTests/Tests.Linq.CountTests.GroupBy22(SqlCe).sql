BeforeExecute
-- SqlCe
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	COUNT(CASE
		WHEN [g_1].[ParentID] + 1 < 3 THEN 1
		ELSE NULL
	END) as [COUNT_1]
FROM
	[Child] [g_1]
WHERE
	[g_1].[ParentID] + 2 > @n
GROUP BY
	[g_1].[ParentID] + 1

