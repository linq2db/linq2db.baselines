BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Child] [c_1]
GROUP BY
	[c_1].[ParentID]
HAVING
	COUNT(*) > 1

