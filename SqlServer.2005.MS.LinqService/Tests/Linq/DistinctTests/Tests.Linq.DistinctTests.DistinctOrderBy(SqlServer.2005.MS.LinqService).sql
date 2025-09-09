BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[t1].[ParentID]
FROM
	(
		SELECT DISTINCT
			[ch].[ParentID]
		FROM
			[Child] [ch]
	) [t1]
ORDER BY
	[t1].[ParentID]

