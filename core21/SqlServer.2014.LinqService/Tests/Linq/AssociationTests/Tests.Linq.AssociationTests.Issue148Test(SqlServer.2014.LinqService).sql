BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[key_data_result].[ParentID],
	[key_data_result].[Value1],
	[detail].[ParentID],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[n].[ParentID],
			[n].[Value1]
		FROM
			[Parent] [n]
	) [key_data_result]
		INNER JOIN [Child] [detail] ON [key_data_result].[ParentID] = [detail].[ParentID]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[n].[ParentID],
	[n].[Value1]
FROM
	[Parent] [n]

