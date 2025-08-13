BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	([t].[ParentID] * 1000) / 1000
FROM
	[Child] [t]
WHERE
	[t].[ParentID] * 1000 > 2000

