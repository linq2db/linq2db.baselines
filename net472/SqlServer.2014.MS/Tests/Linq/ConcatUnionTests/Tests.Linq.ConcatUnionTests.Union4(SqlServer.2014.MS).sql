BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[ParentID],
	1
FROM
	[Parent] [p]
UNION
SELECT
	[ch].[ParentID],
	0
FROM
	[Child] [ch]

