BeforeExecute
-- SqlServer.2014

SELECT
	[ch].[ParentID] * 1000
FROM
	[Child] [ch]
WHERE
	[ch].[ParentID] * 1000 > 2000

