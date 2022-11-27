BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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

