-- SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
GROUP BY
	[c_1].[ParentID]
HAVING
	COUNT(*) > 1

