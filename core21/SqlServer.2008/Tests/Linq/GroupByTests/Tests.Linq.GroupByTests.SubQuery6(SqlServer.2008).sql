BeforeExecute
-- SqlServer.2008

SELECT
	[ch].[ParentID] + 1
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID] + 1

