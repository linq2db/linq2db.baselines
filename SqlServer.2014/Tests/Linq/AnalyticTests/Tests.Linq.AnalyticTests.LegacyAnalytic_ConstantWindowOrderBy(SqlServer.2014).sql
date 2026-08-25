-- SqlServer.2014
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

