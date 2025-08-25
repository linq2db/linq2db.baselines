BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	[c_1].[ParentID],
	[c_1].[ParentID]
FROM
	[Child] [c_1]
UNION ALL
SELECT
	NULL,
	[c_2].[ParentID]
FROM
	[Parent] [c_2]

