-- SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
GROUP BY
	[c_1].[ParentID]
HAVING
	COUNT(*) > 1

