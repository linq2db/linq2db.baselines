BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [count_1]
FROM
	[Child] [c_1]
GROUP BY
	[c_1].[ParentID]
HAVING
	COUNT(*) > 1

