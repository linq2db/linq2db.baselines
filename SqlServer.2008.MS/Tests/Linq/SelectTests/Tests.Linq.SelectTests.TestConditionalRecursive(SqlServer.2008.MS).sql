BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	[c_2].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT TOP (1)
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		) [c_2] ON 1=1

