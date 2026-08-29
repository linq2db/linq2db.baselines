-- SqlServer.2017.MS SqlServer.2017
SELECT
	[p].[ParentID],
	ROW_NUMBER() OVER (ORDER BY (
		SELECT
			1
	)),
	ROW_NUMBER() OVER (ORDER BY [p].[ParentID]),
	ROW_NUMBER() OVER (ORDER BY [p].[ParentID])
FROM
	[Parent] [p]

