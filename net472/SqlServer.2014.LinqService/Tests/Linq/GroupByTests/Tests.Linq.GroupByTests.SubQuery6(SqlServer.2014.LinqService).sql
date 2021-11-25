BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[ch].[ParentID] + 1
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID] + 1

