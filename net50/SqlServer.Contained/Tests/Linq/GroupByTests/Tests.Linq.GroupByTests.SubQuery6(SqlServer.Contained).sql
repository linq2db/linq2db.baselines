BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[ch].[ParentID] + 1
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID] + 1

