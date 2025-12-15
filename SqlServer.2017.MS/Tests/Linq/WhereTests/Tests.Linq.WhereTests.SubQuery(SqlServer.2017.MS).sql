-- SqlServer.2017.MS SqlServer.2017

SELECT
	([t].[ParentID] * 1000) / 1000
FROM
	[Child] [t]
WHERE
	[t].[ParentID] * 1000 > 2000

